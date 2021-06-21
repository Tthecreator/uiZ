function obj_uiZ_designer_getObjectList(){
	var objectFolder = file_find_first(project_location+"objects/*", fa_directory);
	var objects = ds_list_create();
	while(objectFolder!=""){
		//sdbm("found object folder",objectFolder);
		objectFolder = file_find_next();
		//Check for create event
		var createFileName = project_location+"objects/"+objectFolder+"/Create_0.gml";
		if file_exists(createFileName){
			var file = file_text_open_read(createFileName);
			var firstLine = file_text_readln(file);
			if firstLine == "//#define uiZ\r\n" or firstLine == "//#define uiZ\n" then{
				//check if this is not excluded
				var isExcluded = false;
				while(true){
					var nextLine = file_text_readln(file);
					if string_copy(nextLine, 1, 2)!="//" then{break;}
					if	nextLine == "//#exclude\r\n" or nextLine == "//#exclude\n" or
						nextLine == "//#excluded\r\n" or nextLine == "//#excluded\n"
					then{
						isExcluded = true;
						break;
					}
				}
				if isExcluded == false then{
					//found a uiZ object
					ds_list_add(objects,obj_uiZ_designer_getObjectFromFile(file, objectFolder));
				}
			}
			file_text_close(file);
		}
	}
	file_find_close();
	return objects;
}

uiz_designer_object = function(_name) constructor{
	name = _name;
	sprite = "images";
	spritenum = 0;
}

function obj_uiZ_designer_getObjectFromFile(file, objectName){
	var object = new global.uiz_designer_object(objectName);
	while(!file_text_eof(file)){
		var line = file_text_readln(file);
		if string_copy(line,0,3)="//#" then{//if this is a special uiZ define
			var define = string_copy(line, 3, string_length(line)-4);
			var defineSpacePos = string_pos(" ", define);
			var defineType = string_copy(define, 2, defineSpacePos-2);
			var defineValue = string_copy(define, defineSpacePos+1 , string_length(define)-defineSpacePos);
			sdbm("define",define, defineType, defineValue, defineSpacePos);
			switch(defineType){
				case "sprite":
					object.sprite = defineValue;
				break;
				case "spritenum":
				sdbm("set spritenum",define)
					object.spritenum = real(defineValue);
				break;
			}
		}else{//if this is a code line
		
		}
	}
	return object;
}

function obj_uiZ_designer_getObjectNameList(objects){
	var objectNames = ds_list_create();
	for(var i=0; i<ds_list_size(objects); ++i){
		ds_list_add(objectNames, objects[|i].name);
	}
	return objectNames;
}

function obj_uiZ_designer_getObjectSpriteList(objects){
	var objectSprites = ds_list_create();
	for(var i=0; i<ds_list_size(objects); ++i){
		ds_list_add(objectSprites, asset_get_index("spr_uiZ_designer_"+objects[|i].sprite));
	}
	return objectSprites;
}

function obj_uiZ_designer_getObjectSpriteNumList(objects){
	var objectSprites = ds_list_create();
	for(var i=0; i<ds_list_size(objects); ++i){
		ds_list_add(objectSprites, objects[|i].spritenum);
	}
	return objectSprites;
}

///@description Check if in game option the system sandbox is enabled.
function obj_uiZ_designer_checkSystemSandbox(){
	if (os_type==os_windows){
		//Try to list project image
		if file_find_first(project_location+"*.yyp", 0)=="" then{
			file_find_close();
			sdbm("[uiZ_designer:ERROR] Could not find your .yyp file. Is the sandbox disabled? Did you setup project_location location correctly? It is currently set to \""+project_location+"\"");
		}else{
			file_find_close();
			return true;//we have found our valid project
		}
	}else{
		sdbm("[uiZ_designer:ERROR] This program should be launched form windows.")
	}
	return false;
}