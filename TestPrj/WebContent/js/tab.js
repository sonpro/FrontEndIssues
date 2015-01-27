function tabContents(tabContainerID, tagName) {
	
	var tabContainer = document.getElementById(tabContainerID);
	var tabAnchor = tabContainer.getElementsByTagName(tagName);
	var i = 0;
	for(i=0; i<tabAnchor.length; i++) {
		if (tabAnchor.item(i).className == "bt_tab1")
			thismenu = tabAnchor.item(i);
		else
			continue;
		thismenu.container = tabContainer;
		thismenu.targetEl = document.getElementById(tabAnchor.item(i).href.split("#")[1]);
		thismenu.targetEl.style.display = "none";
		thismenu.imgEl = thismenu.getElementsByTagName("img").item(0);
		thismenu.onclick = function tabMenuClick() {
			currentmenu = this.container.current;
			if (currentmenu == this)
				return false;
			if (currentmenu) {
				currentmenu.targetEl.style.display = "none";
				if (currentmenu.imgEl) {
					currentmenu.imgEl.src = currentmenu.imgEl.src.replace(/_on.gif$/, ".gif");
				} else {
					currentmenu.className = currentmenu.className.replace(" bt_tab2", " bt_tab1");
				}
			}
			this.targetEl.style.display = "";
			if (this.imgEl) {
				this.imgEl.src = this.imgEl.src.replace(/.gif$/, "_on.gif");
			} else {
				this.className += " bt_tab2";
			}
			this.container.current = this;
			return false;
		};
		if (!thismenu.container.first) thismenu.container.first = thismenu;
	}
	if (tabContainer.first)	tabContainer.first.onclick();
}