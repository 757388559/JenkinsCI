#!/bin/sh

log_path="~/Desktop/Archives/log.txt"

Project_DIR="~/Desktop/RACDemo/"
Log_path="~/Desktop/Archives/${archiveData}/log.txt"
archiveDate=`(date +%Y-%m-%d-%T)`

workspaceName="HHHH.xcworkspace"
scheme="RACDemo"

configuration="Release"
archivePath="~/Desktop/Archives/${archiveData}/${scheme}"

PROVISIONING_PROFILE=""
CODE_SIGN_IDENTITY=""

projectExist=`ls ${Project_DIR} | grep scheme`
if [ ]; then
#statements
fi


#清空之前的编译
echo "xcode clean" >> $log_path
xcodebuild clean -configuration $configuration -alltargets >> $log_path

#archive
echo "archive" >> $log_path

# archive workspace
xcodebuild archive -workspace "$workspaceName" -scheme "$scheme" -configuration "$configuration" -exportFormat ipa -archivePath "$archivePath" # CODE_SIGN_IDENTITY="$codeSignIdentity" PROVISIONING_PROFILE="$provisioningProfile" >> $log_path

# AppStore验证/或者上传至各个服务器
