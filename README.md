# Video Processing Bash Scripts
I own a [Samsung SmartCam SNH-P6410BN](https://www.samsungsmartcam.com/web/cmm/02_SP/Overview.do?productId=00000000000000001107).  It generate fragments of mp4 video clips throughout the day.  It is difficult to review hundreds of clips in a folder.  These scripts traverse the daily folders and concatinate the clips of each day into a single mp4 file, using [ffmpeg](https://www.ffmpeg.org).

# Usage
1. Copy the daily video folders to the script folder.
1. ```$ ./concat.sh```
1. After concat is done, extract the merged video to current folder: ```$ ./mvmp4.sh```
