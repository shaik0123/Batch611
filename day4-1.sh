for files in *.java
do
        folderName1=`echo $files | awk -F. '{print $1}'`
        #echo $files
        #echo $folderName1
folderName2=`echo $files | awk -F. '{print $2}'`
        echo $files
        echo $folderName1
        echo $folderName2

        printf "\n"
        if [[ -d $folderName1 && $folderName2 ]]
        then
                rm -r $folderName1 $folderName2
        fi
        mkdir -p $folderName1 $folderName2
        cp $files $folderName2
	cp -r $folderName2 $folderName1
done
