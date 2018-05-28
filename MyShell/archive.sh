#!/bin/sh
# iOS Jenkins 打包脚本
echo ${`pwd`}

BUILD_DATE=`(date +%Y-%m-%d-%T)`
TOP_PATH=`cd ..`
ARCHIVE_PATH="${TOP_PATH}/Archives/${BUILD_DATE}/${SCHEME}"
IPA_PATH="${TOP_PATH}/IPAS/${BUILD_DATE}/${SCHEME}"

xcodebuild clean -configuration ${CONFIGURATION} -alltargets

pod install

#xcodebuild archive 
#		   -configuration ${CONFIGURATION} \
#           -workspace ${WORKSPACE} \
#           -archivePath ${ARCHIVE_PATH} 
           
#xcdoebuild -exportArchive \
#		    -archivePath ${ARCHIVE_PATH}.xcarchive \
#           -exportFormat ipa \
#           -exportProvisioningProfile ${exprotOptions} \
#           -exportPath ${IPA_PATH}
