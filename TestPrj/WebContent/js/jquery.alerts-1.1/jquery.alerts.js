// jQuery Alert Dialogs Plugin
//
// Version 1.1
//
// Cory S.N. LaViska
// A Beautiful Site (http://abeautifulsite.net/)
// 14 May 2009
//
// Visit http://abeautifulsite.net/notebook/87 for more information
//
// Usage:
//		jAlert( message, [title, callback] )
//		jConfirm( message, [title, callback] )
//		jPrompt( message, [value, title, callback] )
// 
// History:
//
//		1.00 - Released (29 December 2008)
//
//		1.01 - Fixed bug where unbinding would destroy all resize events
//
// License:
// 
// This plugin is dual-licensed under the GNU General Public License and the MIT License and
// is copyright 2008 A Beautiful Site, LLC. 
//
(function($) {
	
	$.alerts = {
		
		// These properties can be read/written by accessing $.alerts.propertyName from your scripts at any time
		position:'content',					// center or content
		verticalOffset: -75,                // vertical offset of the dialog from center screen, in pixels
		horizontalOffset: 90,             // horizontal offset of the dialog from center screen, in pixels/
		repositionOnResize: true,           // re-centers the dialog on window resize
		overlayOpacity: .01,                // transparency level of overlay
		overlayColor: '#FFF',               // base color of overlay
		draggable: true,                    // make the dialogs draggable (requires UI Draggables plugin)
		okButton: '&nbsp;OK&nbsp;',         // text for the OK button
		cancelButton: '&nbsp;Cancel&nbsp;', // text for the Cancel button
		dialogClass: null,                  // if specified, this class will be applied to all dialogs
		
		// Public methods
		
		alert: function(message, title, callback) {
			
			if( title == null ) title = 'Alert';
			$.alerts._show(title, message, null, 'alert', function(result) {
				if( callback ) callback(result);
			});
		},
		
		alert2: function(message, title, callback) {
			if( title == null ) title = 'Alert';
			$.alerts._show(title, message, null, 'alert2', function(result) {
				if( callback ) callback(result);
			});
		},
		
		confirm: function(message, title, callback) {
			if( title == null ) title = 'Confirm';
			$.alerts._show(title, message, null, 'confirm', function(result) {
				if( callback ) callback(result);
			});
		},
			
		prompt: function(message, value, title, callback) {
			if( title == null ) title = 'Prompt';
			$.alerts._show(title, message, value, 'prompt', function(result) {
				if( callback ) callback(result);
			});
		},

		process: function() {
			$.alerts.verticalOffset   = -75;
			
			title = "Process";
			message = "";
			value = "";
			$.alerts._show(title, message, value, 'process', function(result) {
				if( callback ) callback(result);
			});
		},
		
		// Private methods
		 
		_show: function(title, msg, value, type, callback) {
			
			var bodyDiv = "";
			
			$.alerts._hide();
			$.alerts._overlay('show');
			 
			bodyDiv = '<div id="popup_container">';
		    bodyDiv = bodyDiv + '<iframe id="popup_iframe" style="position:absolute;z-index:-2;width:0;height:0;top:0;left:0;margin:0;padding:0;scrolling:no;" frameborder="0" src=""></iframe>';
		    if (type != 'alert') {
			    bodyDiv = bodyDiv + '<h1 id="popup_title"></h1>';
		    }
		    bodyDiv = bodyDiv + '<div id="popup_content">';
		    bodyDiv = bodyDiv + '<div id="popup_message"></div>';
		    bodyDiv = bodyDiv + '</div>';
		    bodyDiv = bodyDiv + '</div>';
		    
			$("BODY").append(bodyDiv);
			
			if( $.alerts.dialogClass ) $("#popup_container").addClass($.alerts.dialogClass);
			
			
			// IE6 Fix
			var pos = ($.browser.msie && parseInt($.browser.version) <= 6 ) ? 'absolute' : 'fixed'; 
			
			$("#popup_container").css({
				position: pos,
				zIndex: 9999999,
				padding: 0,
				margin: 0
			});
			
		    if (type != 'alert') {
		    	$("#popup_title").text(title);
		    }
			$("#popup_content").addClass(type);
			$("#popup_message").text(msg);
			$("#popup_message").html( $("#popup_message").text().replace(/\n/g, '<br />') );
			
			$("#popup_container").css({
				//minWidth: $("#popup_container").outerWidth(),
				maxWidth: $("#popup_container").outerWidth()
			});

			var popUpHeight = $("#popup_container").outerHeight();
			var popUpWidth  = $("#popup_container").outerWidth();

			switch( type ) {
				case 'alert':
					//$("#popup_message").after('<div id="popup_panel"><a href="#"><img id="popup_ok" src="../../../img/buttons/btn02_usev211.gif" alt="Ȯ��" value="' + $.alerts.okButton + '" /></a></div>');
					//$("#popup_message").after('<div id="popup_panel"><div class=\"error\"><a href="#"><img id="popup_ok" src="../../../img/buttons/btn02_usev211.gif" alt="Ȯ��" value="' + $.alerts.okButton + '" /></a></div>');
					$("#popup_message").after('<div id="popup_panel" style="z-index:999999;padding:0;margin:0;"></div>');
					$("#popup_ok").click( function() {
						$.alerts._hide();
						callback(true);
					});

					$("#popup_ok").focus().keypress( function(e) {
						if( e.keyCode == 13 || e.keyCode == 27 ) $("#popup_ok").trigger('click');
					});
					
					popUpHeight = 200;
					popUpWidth  = 400;					
				break;
				case 'alert2':
					$("#popup_message").after('<div id="popup_panel"><a href="#"><img id="popup_ok" src="../../../img/buttons/btn02_usev211.gif" alt="Ȯ��" value="' + $.alerts.okButton + '" /></a></div>');
					$("#popup_ok").click( function() {
						$.alerts._hide();
						callback(true);
					});

					$("#popup_ok").focus().keypress( function(e) {
						if( e.keyCode == 13 || e.keyCode == 27 ) $("#popup_ok").trigger('click');
					});
				break;
				case 'confirm':
					$("#popup_message").after('<div id="popup_panel"><input type="button" value="' + $.alerts.okButton + '" id="popup_ok" />  <input type="button" value="' + $.alerts.cancelButton + '" id="popup_cancel" /></div>');
					$("#popup_ok").click( function() {
						$.alerts._hide();
						if( callback ) callback(true);
					});
					$("#popup_cancel").click( function() {
						$.alerts._hide();
						if( callback ) callback(false);
					});
					$("#popup_ok").focus();
					$("#popup_ok, #popup_cancel").keypress( function(e) {
						if( e.keyCode == 13 ) $("#popup_ok").trigger('click');
						if( e.keyCode == 27 ) $("#popup_cancel").trigger('click');
					});
				break;
				case 'prompt':
					$("#popup_message").append('<br /><input type="text" size="30" id="popup_prompt" />').after('<div id="popup_panel"><input type="button" value="' + $.alerts.okButton + '" id="popup_ok" /> <input type="button" value="' + $.alerts.cancelButton + '" id="popup_cancel" /></div>');
					$("#popup_prompt").width( $("#popup_message").width() );
					$("#popup_ok").click( function() {
						var val = $("#popup_prompt").val();
						$.alerts._hide();
						if( callback ) callback( val );
					});
					$("#popup_cancel").click( function() {
						$.alerts._hide();
						if( callback ) callback( null );
					});
					$("#popup_prompt, #popup_ok, #popup_cancel").keypress( function(e) {
						if( e.keyCode == 13 ) $("#popup_ok").trigger('click');
						if( e.keyCode == 27 ) $("#popup_cancel").trigger('click');
					});
					if( value ) $("#popup_prompt").val(value);
					$("#popup_prompt").focus().select();
				break;
				case 'process':
					$("#popup_message").after('<div id="popup_panel" style="z-index:9999998;padding:0;text-align:center;margin:0;width:261px;height:113px;background:url(/images/common/load_bg.png) no-repeat;"><img src="/images/common/loading01.gif" alt="�������Դϴ�." style="padding-top:20px;" /></div>');
					$("#popup_content").css({
						background: '',
						width: 0,
						height: 83,
						padding: 0,
						border: 0
					});

					$("#popup_title").css({
						display: "none"
					});
					
					popUpHeight = $("#popup_panel").outerHeight();
					popUpWidth  = $("#popup_panel").outerWidth() - 3;
				break;
			}
			
			$("#popup_iframe").css({
				width: popUpWidth,
				height: popUpHeight
			});

			$.alerts._reposition();
			$.alerts._maintainPosition(true);
			
			// Make draggable
			if( $.alerts.draggable ) {
				try {
					$("#popup_container").draggable({ handle: $("#popup_title") });
					$("#popup_title").css({ cursor: 'move' });
				} catch(e) { /* requires jQuery UI draggables */ }
			}
		},
		
		_hide: function() {
			$("#popup_container").remove();
			$.alerts._overlay('hide');
			$.alerts._maintainPosition(false);
		},
		
		_overlay: function(status) {
			switch( status ) {
				case 'show':
					$.alerts._overlay('hide');
					$("BODY").append('<div id="popup_overlay"></div>');
					$("#popup_overlay").css({
						position: 'absolute',
						zIndex: 999999,
						top: '0px',
						left: '0px',
						width: '98%',
						height: $(document).height(),
						background: $.alerts.overlayColor,
						opacity: $.alerts.overlayOpacity
					});
				break;
				case 'hide':
					$("#popup_overlay").remove();
				break;
			}
		},
		
		_reposition: function() {
			var top = (($(window).height() / 2) - ($("#popup_container").outerHeight() / 2)) + $.alerts.verticalOffset;
			var left = 0;
			
			var width = parseInt($("#popup_iframe").css('width'),10);
			
			if( $.alerts.position == 'content' ){
				
				if( $('div[id="body"]').length ){
					left = ($(window).width() / 2) - (width/2);	
				}else{
					left = (($(window).width() / 2) - (width/2) ) + $.alerts.horizontalOffset;
				}
			}else if( $.alerts.position == 'center' ){
				left = ($(window).width() / 2) - (width/2);
			}
			
			if( top < 0 ) top = 0;
			if( left < 0 ) left = 0;
			
			// IE6 fix
			if( $.browser.msie && parseInt($.browser.version) <= 6 ) top = top + $(window).scrollTop();
			
			$("#popup_container").css({
				top:  top  + 'px',
				left: left + 'px'
			});
			$("#popup_overlay").height( $(document).height()-10 );
		},
		
		_maintainPosition: function(status) {
			if( $.alerts.repositionOnResize ) {
				switch(status) {
					case true:
						$(window).bind('resize', $.alerts._reposition);
					break;
					case false:
						$(window).unbind('resize', $.alerts._reposition);
					break;
				}
			}
		}
		
	};
	 
	// Shortuct functions
	jAlert = function(message, title, callback) {
		$.alerts.alert(message, title, callback);
	};
	
	jAlert2 = function(message, title, callback) {
		$.alerts.alert2(message, title, callback);
	};
	
	jConfirm = function(message, title, callback) {
		$.alerts.confirm(message, title, callback);
	};
		
	jPrompt = function(message, value, title, callback) {
		$.alerts.prompt(message, value, title, callback);
	};

	jProcess = function(flag) {
		if( flag == true ) $.alerts.position = 'center';
		$.alerts.process();
	};
	
	
})(jQuery);