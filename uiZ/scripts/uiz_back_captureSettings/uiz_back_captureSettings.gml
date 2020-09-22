/// @description uiz_back_captureSettings()
function uiz_back_captureSettings() {
	//gets the current background settings as determined while fixing the current object.
	//this is needed when drawing multiple sub backgrounds in a single objects. (most often using prefixes like _item_ or _topbar_)
	//use uiz_back_resumeSettings() to put the captures settings back.
	bkspr_old=bkspr;
	bkcol_old=bkcol;
	bkmar_old=bkmar;
	texas_old=texas;



}
