Dear uiZ user,

Thank you for acquiring this asset! It means a lot to me.
I hope you can put this asset to good use. 
If you do have any questions, bugs or feature request then please report them to:
https://forum.yoyogames.com/index.php?members/tthecreator.233/
Just click somewhere on my name (except the big one on the top) and in the message, that pops up click start a conversation. I will try to help you, but please be nice and patient.
If you want to get started, unpack the .zip archive which you can find here and you will need: https://drive.google.com/open?id=0B55RKkBYApL1MVhrbUJOd0dPTFU. There should be a tutorial folder in there. 
For the basic tutorial series, there is a YouTube playlist (it has been said that this is way easier to follow than the text tutorials):
https://www.youtube.com/playlist?list=PLsLUTEpFp6ryglXhtJQeXBkEEMR7yjL57
Again, don’t hesitate to send me a message if something’s wrong with the tutorials or if you don’t understand something. However, I might request that you become better at using gml or becoming better at programming in general as uiZ might be a bit to advanced for you to understand.

This asset is designed for game maker studio 1.x, but I have been working on porting it over to game maker studio 2.x.
If you are reading this, you are using the gms 1.x package.
There have been some changes in the way that depth which can cause some issues. I have fixed most of them but if you do find any please report them. Everything else should work just fine on gms 2.0.
The designer however doesn’t work on game maker studio 2.0 since it is based on editing the project files of a gms 1.0 project. I might port that over later if it gets requested enough.
To get the project running in game maker studio 2.0 you must take some steps:
1.	Import like normal
2.	place the object “obj_uiz_xmlparser” from the “uiz_designer” folder outside of that folder and after that delete the “uiz_designer folder”. 
3.	Inside the scripts resource list: place the folder “xml parser” from the “uiz_designer” folder outside of that folder and after that delete the “uiz_designer folder”. 
4.	Delete all the scripts inside “compatibility”, but not that folder itself.
5.	Copy over all the scripts located in the folder “gms2compatibilitypack” which you can find inside the uiZ.zip file.
Those steps should work. If you want some pictures/gif animations that go along with every step, then please check out the manual.
You only need to take these steps if you actually want to import your project, if you just want to use gms2.0 then you can download a gms2.0 made package trough the marketplace library manager of game maker 2.0

Here is a link to a doc that contains all kinds of links to the right packages you will need: (including manual and macromanager)
https://docs.google.com/document/d/1FKZ26Iu_p8zaXNbz_VvjTN9Wh3LUfxshk_mRfbtHbV4/edit?usp=sharing

How to use the .chm file:
1.Download file
2.Right click the file and go to properties
3.Make sure the checkbox “unlock” at the bottom of the general page is checked.
4.open file

A message about macros (=constants):
uiZ uses a lot of constants, also very small ones like "px" or "dp". This could overlap with any variables used in your code.
Therefore, I have made a little tool that can import macros, while finding and fixing conflicts.
You will be able to individually choose per variable how you want to handle confilcts.

If you are starting in a fresh project, or do not expect to have any conficts, you can just import the constants.txt file.
To do that, go to "Macros" (in your resource tree)>"All configurations">"Load">select "constants.txt">"Open"(on the file selection window)>"Ok"(on the macro window).


Also one reminder DON’T FORGET TO SET “SECUREMODE” (ALL CAPS) INSIDE THE MACRO’S TO TRUE WHEN RELEASING THE GAMES. ELSE, YOUR GAME WILL BE VULNERABLE TO EXECUTE ANY COMMAND ON YOUR WINDOWS SYSTEM IF YOU ARE ALSO USING SOMETHING LIKE NSP. If you want to be 100% certain nothing happens then delete the uiz_designer folder from the objects and scripts list making sure that all resources having to do with handling xml are taken out of there.
