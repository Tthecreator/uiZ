with(obj_uiz_designer){

sdbm('robocopy "'+game_save_id+'uiz_savefiles\" "'+projectfolder+'uiZ\'+loadfile+'_datafiles\" /purge /E /COPY:DAT')

sdbm("robocopy returned: ",uiz_executecmd('robocopy "'+game_save_id+'uiz_savefiles" "'+projectfolder+'uiZ\'+loadfolder+'" /purge /E /COPY:DAT'))

uiz_copyfilewin(game_save_id+"\uizdata.ini",projectfolder+"uiZ\"+loadfile)

uiz_popup_ok("the saving of '"+loadfile+"' was successful","save file",1)

}
