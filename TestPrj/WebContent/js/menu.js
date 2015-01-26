	function toggle_gnbover(num, subname) {
		var obj;
		var obj_menu;
		
		var gsize = tmenug.length;
		for (var z=1; z<=gsize; z++){
			obj      = document.getElementById(subname + z);
			obj_menu = document.getElementById('m' + z);

			if (obj == undefined || obj_menu == undefined) continue;
			
			if (z == num){
				obj.style.display="";
				var tmpFileNm = tmenug[z];
				if (tmpFileNm != null) {
					var tmpFileArr = tmpFileNm.split(".");
					if (tmpFileArr.length > 0 ) {
						tmpFileNm = tmpFileArr[0] + "on." + tmpFileArr[tmpFileArr.length -1];
					}
				}
				obj_menu.src="/images/menu/" + tmpFileNm;
			} else {
				obj.style.display="none";
				obj_menu.src="/images/menu/" + tmenug[z];
			}
		}
		return;
	}
	function toggle_gnsover(idx1, idx2) {
        var tmpFileNm = tmenus[idx1][idx2];
		if (tmpFileNm != null) {
			var tmpFileArr = tmpFileNm.split(".");
			if (tmpFileArr.length > 0 ) {
				tmpFileNm = tmpFileArr[0] + "on." + tmpFileArr[tmpFileArr.length -1];
			}
		}        
        
      	obj = document.getElementById('msub_0' + idx1 + "0" + idx2);
      	obj.src="/images/menu/" + tmpFileNm;
	}
	
	function toggle_gnsout(idx1, idx2) {
        var tmpFileNm = tmenus[idx1][idx2];
        
      	obj = document.getElementById('msub_0' + idx1 + "0" + idx2);
      	obj.src="/images/menu/" + tmpFileNm;
	}