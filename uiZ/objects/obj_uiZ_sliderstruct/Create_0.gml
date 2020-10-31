//#define uiZ
//#sprite images
//#spritenum 3
//#objectversion 1.0
//#exclude
uiz_objinit()
//put init variables here
//framelist=ds_list_create();
frames=0//v//frames//
frame=0;
queuedframe=-1;
moveback=1;
dir=0;
linearvalue=0;
animationtime=0.5//v//animation time//
animation=uiz_smoothstep//a//animation//
update=true;
updatescript=-1;
updatescriptargument=0;
horizontal=true//b//horizontal(true) or vertical(false)//
mouseslide=true//b//allow mouse sliding//
slideonwholeframe=false//b//slide on whole frame//
slidesize=0.3//v//slidesize//
slidesizetype=dp//z//slidesize type//
slidedist=1//v//minimum slide distance//
slidedisttype=dp//z//minimum slide distance type//
newframe=uiz_c(obj_uiZ_frame)
uiz_setParent(newframe,id)
newframe.posinframex=uiz_snapleft;
newframe.posinframey=uiz_snaptop;
newframe.posvalwtype=fc;
newframe.posvalhtype=fc;
newframe.posvalw=1;
newframe.posvalh=1;
newframe.setpointx=uiz_left;
newframe.setpointy=uiz_top;
uiz_fixframepos(newframe)
oldframe=newframe;
oldhasmouseframe=0;
hasmouse=false;
tabslider=0;
oldclickframe=0;

