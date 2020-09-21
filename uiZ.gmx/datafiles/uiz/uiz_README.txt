Dear uiZ user,

Thank you for acquiring this asset! It means a lot to me.
I hope you can put this asset to good use. 
If you do have any bugs or feature request then please report them to GitHub:
https://github.com/Tthecreator/uiZ/issues
Alternatively, if you have questions, you can contact me on the GameMaker Forums:
https://forum.yoyogames.com/index.php?members/tthecreator.233/
Just click somewhere on my name (except the big one on the top) and in the message, that pops up click start a conversation. I will try to help you, but please be nice and patient.

If you want to get started, unpack the .zip archive which you can find here and you will need: https://drive.google.com/open?id=0B55RKkBYApL1MVhrbUJOd0dPTFU. There should be a tutorial folder in there. 
For the basic tutorial series, there is a YouTube playlist (it has been said that this is way easier to follow than the text tutorials):
https://www.youtube.com/playlist?list=PLsLUTEpFp6ryglXhtJQeXBkEEMR7yjL57
Again, don't hesitate to send me a message if something is wrong with the tutorials or if you don't understand something. However, I might request that you become better at using gml or becoming better at programming in general as uiZ might be a bit to advanced for you to understand.

Here is a link to a doc that contains all kinds of links to the right packages you will need: (including manual and macromanager)
https://docs.google.com/document/d/1FKZ26Iu_p8zaXNbz_VvjTN9Wh3LUfxshk_mRfbtHbV4/edit?usp=sharing

How to use the .chm file:
1.Download file
2.Right click the file and go to properties
3.Make sure the checkbox �unlock� at the bottom of the general page is checked.
4.open file

A message about macros (=constants):
uiZ uses a lot of constants, also very small ones like "px" or "dp". This could overlap with any variables used in your code.
Therefore, I have made a little tool that can import macros, while finding and fixing conflicts.
You will be able to individually choose per variable how you want to handle confilcts.

If you are starting in a fresh project, or do not expect to have any conficts, you can just import the constants.txt file.
To do that, go to "Macros" (in your resource tree)>"All configurations">"Load">select "constants.txt">"Open"(on the file selection window)>"Ok"(on the macro window).


Also one reminder DON�T FORGET TO SET �SECUREMODE� (ALL CAPS) INSIDE THE MACRO�S TO TRUE WHEN RELEASING THE GAMES. ELSE, YOUR GAME WILL BE VULNERABLE TO EXECUTE ANY COMMAND ON YOUR WINDOWS SYSTEM IF YOU ARE ALSO USING SOMETHING LIKE NSP. If you want to be 100% certain nothing happens then delete the uiz_designer folder from the objects and scripts list making sure that all resources having to do with handling xml are taken out of there.
