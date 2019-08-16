///uiz_textarea_resetSelection(id)
with(argument0){
selection1Line=-1;
selection1X=-1;
selection1Char=-1;

selection2Line=-1;
selection2X=-1;
selection2Char=-1

selectionMinLine=selection1Line;
selectionMinX=selection1X;
selectionMinChar=selection1Char;

selectionMaxLine=selection2Line;
selectionMaxX=selection2X;
selectionMaxChar=selection2Char;

last_selectionMinLine=selectionMinLine;
last_selectionMinChar=selectionMinChar;

last_selectionMaxLine=selectionMaxLine;
last_selectionMaxChar=selectionMaxChar;

isTyping=false;
hasSelection=false;
redoSelection=false;

}
