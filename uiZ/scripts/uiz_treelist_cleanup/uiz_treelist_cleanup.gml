function uiz_treelist_cleanup() {
	uiz_endobject()
	uiz_destroyDsList(indentEnabledAndBoxList);
	uiz_destroyDsList(nextItemList);
	uiz_destroyDsList(spriteList);
	uiz_destroyDsList(textList);
	uiz_destroyDsList(handleList);
	uiz_destroyDsList(hierarchyItemList);
	uiz_destroyDsList(updateIndividualItemList);


}
