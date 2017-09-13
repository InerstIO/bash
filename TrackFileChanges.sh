# $Directory to be the FULL path
# Add this script to crontab with the frequency you want
pre=`cat $Directory/record.txt`
md5=`md5sum $Directory/$File|cut -d ' ' -f1`
if [ $pre != $md5 ]
then
	cp $Directory/$File $Directory/rec/$(date +%s)$File
	echo $md5>$Directory/record.txt
fi
