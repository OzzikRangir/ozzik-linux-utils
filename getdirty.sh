#!/bin/bash
FG="white" # foreground colour
OBC="red" # background colour of cell text if active

DIRTY=$(( `grep -e Dirty: /proc/meminfo | awk '{print $2}'` * 1024 ))
WRITEBACK=$(( `grep -e Writeback: /proc/meminfo | awk '{print $2}'` * 1024 ))
DIRTY=`numfmt --to=iec-i --suffix=B --padding 7 $DIRTY`
WRITEBACK=`numfmt --to=iec-i --suffix=B --padding 7 $WRITEBACK`
echo "<txt><span weight='Bold' fgcolor='Yellow'>D:$DIRTY</span>
<span weight='Bold' fgcolor='Orange'>W:$WRITEBACK</span></txt>"
echo "<tool>Dirty: $DIRTY
Writeback: $WRITEBACK</tool>"
