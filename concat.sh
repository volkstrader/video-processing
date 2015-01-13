#!/bin/sh
DIR=`pwd`
for d in $(ls -d */)
do 
	cmd='cd "$DIR/${d%%/}"'
	eval $cmd
	pwd
	
	for f in $(ls -rt *.dat)
	do
		NAME=${f%.dat}
		if [ -e "$NAME.avi" ]
		then
			cmd="ffmpeg -i $NAME.avi $NAME.mp4"
			eval $cmd
		fi
		if [ -e "$NAME.mp4" ]
		then
			cmd="ffmpeg -i $NAME.mp4 -c copy -bsf h264_mp4toannexb $NAME.ts"
			eval $cmd
		fi
	done
	
	printf -v list "%s|" $(ls -rt *.ts)
	list="ffmpeg -i \"concat:${list%?}\" -c copy -bsf aac_adtstoasc ${d%%/}.mp4"
	eval $list
done
exit
