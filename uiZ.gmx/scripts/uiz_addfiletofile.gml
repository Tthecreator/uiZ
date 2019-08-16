///uiz_addfiletofile(destination,source)
//the destination needs to be openened using file_text_open_write or file_text_open_append.
//source needs to be openend using file_text_open_read.
var fd=argument0
var fs=argument1
while(!file_text_eof(fs)){
file_text_write_string(fd,file_text_readln(fs))
//file_text_writeln(fd)
}
