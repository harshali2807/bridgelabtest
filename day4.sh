cd D:/stage1_review
for item in `ls`
do
	fileName=`echo $item | awk -F. '{print $1}'`
	extensionName=`echo $item | awk -F. '{print $2}'`
	mkdir $fileName
	cd $fileName
	mkdir $extensionName
	cd D:/stage1_review
	mv $item $fileName/$extensionName


done
