//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object

gridList = uiz_c(obj_uiZ_gridlist);
//uiz_setParent(gridList,frame_prices);

headerList = ds_list_create();
ds_list_add(headerList," ", " ", " ", " ");

maingrid=ds_grid_create(4,3);


gridList.mainlist=headerList;
gridList.maingrid=maingrid;

ds_grid_set(maingrid,0,0,"val1");
ds_grid_set(maingrid,0,1,"val2");
ds_grid_set(maingrid,0,2,"val3");

ds_grid_set(maingrid,1,0,"val1");
ds_grid_set(maingrid,1,1,"val2");
ds_grid_set(maingrid,1,2,"val3");

ds_grid_set(maingrid,2,0,"val1");
ds_grid_set(maingrid,2,1,"val2");
ds_grid_set(maingrid,2,2,"val3");

ds_grid_set(maingrid,3,0,"val1");
ds_grid_set(maingrid,3,1,"val2");
ds_grid_set(maingrid,3,2,"val3");

gridList.posvalw=0.7;
gridList.posvalh=0.7;

gridList.posinframex=uiz_fill;
gridList.posinframey=uiz_fill;
uiz_position_t()
uiz_fix(gridList);