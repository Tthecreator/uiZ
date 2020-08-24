///script_name([inwhat])
//This script has been generated using the uiZ designer tool.
//takes an optional argument that allows you to put this in a frame for example.
if argument_count>0 and instance_exists(argument[0]) then{
var o=argument[0];
}else{
var o=obj_uiZ_controller.id;
}
//Handling the object 'UIZ__obj_uiZ_rotator' of index 'obj_uiZ_rotator'
UIZ__obj_uiZ_rotator=uiz_c(obj_uiZ_rotator)
if argument_count>0 then{uiz_setParent(UIZ__obj_uiZ_rotator,o)}
UIZ__obj_uiZ_rotator.posinframex=px
UIZ__obj_uiZ_rotator.posinframey=px
UIZ__obj_uiZ_rotator.posvalwtype=px
UIZ__obj_uiZ_rotator.posvalhtype=px
UIZ__obj_uiZ_rotator.posvalx=55.000000
UIZ__obj_uiZ_rotator.posvaly=61.000000
UIZ__obj_uiZ_rotator.posvalw=97.000000
UIZ__obj_uiZ_rotator.posvalh=103.000000
UIZ__obj_uiZ_rotator.setpointx=2
UIZ__obj_uiZ_rotator.setpointy=2
UIZ__obj_uiZ_rotator.rotation=0
UIZ__obj_uiZ_rotator.sprite='spr_uiZ_gear'
UIZ__obj_uiZ_rotator.img=0
UIZ__obj_uiZ_rotator.rotationtime=1
UIZ__obj_uiZ_rotator.animation=0
uiz_fixgeneralpos(UIZ__obj_uiZ_rotator)


//Handling the object 'UIZ__obj_uiZ_drawtext' of index 'obj_uiZ_drawtext'
UIZ__obj_uiZ_drawtext=uiz_c(obj_uiZ_drawtext)
if argument_count>0 then{uiz_setParent(UIZ__obj_uiZ_drawtext,o)}
UIZ__obj_uiZ_drawtext.posinframex=px
UIZ__obj_uiZ_drawtext.posinframey=px
UIZ__obj_uiZ_drawtext.posvalwtype=px
UIZ__obj_uiZ_drawtext.posvalhtype=px
UIZ__obj_uiZ_drawtext.posvalx=0
UIZ__obj_uiZ_drawtext.posvaly=0
UIZ__obj_uiZ_drawtext.posvalw=183.000000
UIZ__obj_uiZ_drawtext.posvalh=50.000000
UIZ__obj_uiZ_drawtext.setpointx=2
UIZ__obj_uiZ_drawtext.setpointy=2
UIZ__obj_uiZ_drawtext.color=0
UIZ__obj_uiZ_drawtext.text='Hi, how are you?'
UIZ__obj_uiZ_drawtext.center=1
UIZ__obj_uiZ_drawtext.font='-1'
uiz_fixgeneralpos(UIZ__obj_uiZ_drawtext)


//Handling the object 'UIZ__obj_uiZ_valuebox' of index 'obj_uiZ_valuebox'
UIZ__obj_uiZ_valuebox=uiz_c(obj_uiZ_valuebox)
if argument_count>0 then{uiz_setParent(UIZ__obj_uiZ_valuebox,o)}
UIZ__obj_uiZ_valuebox.posinframex=px
UIZ__obj_uiZ_valuebox.posinframey=px
UIZ__obj_uiZ_valuebox.posvalwtype=px
UIZ__obj_uiZ_valuebox.posvalhtype=px
UIZ__obj_uiZ_valuebox.posvalx=458.000000
UIZ__obj_uiZ_valuebox.posvaly=224.000000
UIZ__obj_uiZ_valuebox.posvalw=247.000000
UIZ__obj_uiZ_valuebox.posvalh=127.000000
UIZ__obj_uiZ_valuebox.setpointx=2
UIZ__obj_uiZ_valuebox.setpointy=2
UIZ__obj_uiZ_valuebox.value=0
UIZ__obj_uiZ_valuebox.plusbuttoncolor=32768
UIZ__obj_uiZ_valuebox.plusbuttononcolor=32896
UIZ__obj_uiZ_valuebox.plusbuttonincolor=65280
UIZ__obj_uiZ_valuebox.minbuttoncolor=255
UIZ__obj_uiZ_valuebox.minbuttononcolor=4235519
UIZ__obj_uiZ_valuebox.minbuttonincolor=65535
UIZ__obj_uiZ_valuebox.iconcolor=16777215
UIZ__obj_uiZ_valuebox.textcolor=0
UIZ__obj_uiZ_valuebox.butmargin=2
UIZ__obj_uiZ_valuebox.butrightmargin=0
UIZ__obj_uiZ_valuebox.font='-1'
UIZ__obj_uiZ_valuebox.butsteps=0.50
UIZ__obj_uiZ_valuebox.valuespeed=1
UIZ__obj_uiZ_valuebox.valuefastspeed=180
UIZ__obj_uiZ_valuebox.typeanimationin=9
UIZ__obj_uiZ_valuebox.typeanimationout=9
UIZ__obj_uiZ_valuebox.countspeed=1
UIZ__obj_uiZ_valuebox.maxvalue=10000
UIZ__obj_uiZ_valuebox.minvalue=-10000
UIZ__obj_uiZ_valuebox.texturescript=uiz_back_circlestitch
UIZ__obj_uiZ_valuebox.sprite_normal='spr_uiZ_border1'
UIZ__obj_uiZ_valuebox.color_normal=16777215
UIZ__obj_uiZ_valuebox.margin_normal=5
UIZ__obj_uiZ_valuebox.sprite_texturemode=1
UIZ__obj_uiZ_valuebox.border_texturemode=0
UIZ__obj_uiZ_valuebox.sprite_over='spr_uiZ_border1_over'
UIZ__obj_uiZ_valuebox.color_over=-1
UIZ__obj_uiZ_valuebox.margin_over=-1
UIZ__obj_uiZ_valuebox.sprite_in='spr_uiZ_border1_in'
UIZ__obj_uiZ_valuebox.color_in=-1
UIZ__obj_uiZ_valuebox.margin_in=-1
UIZ__obj_uiZ_valuebox.sprite_out='spr_uiZ_border1_in'
UIZ__obj_uiZ_valuebox.color_out=-1
UIZ__obj_uiZ_valuebox.margin_out=-1
uiz_fixgeneralpos(UIZ__obj_uiZ_valuebox)


//Handling the object 'UIZ__obj_uiZ_checkbox' of index 'obj_uiZ_checkbox'
UIZ__obj_uiZ_checkbox=uiz_c(obj_uiZ_checkbox)
if argument_count>0 then{uiz_setParent(UIZ__obj_uiZ_checkbox,o)}
UIZ__obj_uiZ_checkbox.posinframex=px
UIZ__obj_uiZ_checkbox.posinframey=px
UIZ__obj_uiZ_checkbox.posvalwtype=px
UIZ__obj_uiZ_checkbox.posvalhtype=px
UIZ__obj_uiZ_checkbox.posvalx=317.000000
UIZ__obj_uiZ_checkbox.posvaly=220.000000
UIZ__obj_uiZ_checkbox.posvalw=91.000000
UIZ__obj_uiZ_checkbox.posvalh=100.000000
UIZ__obj_uiZ_checkbox.setpointx=2
UIZ__obj_uiZ_checkbox.setpointy=2
UIZ__obj_uiZ_checkbox.checkcolor=0
UIZ__obj_uiZ_checkbox.checkoncolor=4210752
UIZ__obj_uiZ_checkbox.checkincolor=8421504
UIZ__obj_uiZ_checkbox.margin=2
UIZ__obj_uiZ_checkbox.value=1
UIZ__obj_uiZ_checkbox.texturescript=uiz_back_circlestitch
UIZ__obj_uiZ_checkbox.sprite_normal='spr_uiZ_border1'
UIZ__obj_uiZ_checkbox.color_normal=16777215
UIZ__obj_uiZ_checkbox.margin_normal=5
UIZ__obj_uiZ_checkbox.sprite_texturemode=1
UIZ__obj_uiZ_checkbox.border_texturemode=0
UIZ__obj_uiZ_checkbox.sprite_over='spr_uiZ_border1_over'
UIZ__obj_uiZ_checkbox.color_over=-1
UIZ__obj_uiZ_checkbox.margin_over=-1
UIZ__obj_uiZ_checkbox.sprite_in='spr_uiZ_border1_in'
UIZ__obj_uiZ_checkbox.color_in=-1
UIZ__obj_uiZ_checkbox.margin_in=-1
UIZ__obj_uiZ_checkbox.sprite_out='spr_uiZ_border1_in'
UIZ__obj_uiZ_checkbox.color_out=-1
UIZ__obj_uiZ_checkbox.margin_out=-1
uiz_fixgeneralpos(UIZ__obj_uiZ_checkbox)



