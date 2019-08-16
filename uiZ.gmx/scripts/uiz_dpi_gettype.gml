if os_type=os_windows then{
if os_version>=393219 then{//if using windows 8.1 or up
return external_call(global.uiz_dll_getdpitype,string(window_handle()))
}else{
return 0;
}
}else{
return 1;
}

/***************************************************
  PROCESS_DPI_UNAWARE            = 0,
  PROCESS_SYSTEM_DPI_AWARE       = 1,
  PROCESS_PER_MONITOR_DPI_AWARE  = 2
 ***************************************************/
