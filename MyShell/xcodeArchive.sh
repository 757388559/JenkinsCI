#!/bin/sh
#最新版的打包上传


log_path="~/Desktop/Archives/log.txt"

#xcodebuild -configuration ：Debug和Release两个
workspaceName="HHHH.xcworkspace"
scheme="HHHH"
project="HHHH.xcodeproj"

configuration="Release" 
archivePath="~/Desktop/Archives/"

configurationBuildDir=""
PROVISIONING_PROFILE=""
CODE_SIGN_IDENTITY=""

archiveData=`(date +%Y-%m-%d-%T)`

#清空之前的编译
echo "xcode clean" >> $log_path
xcodebuild clean -configuration $configuration -alltargets >> $log_path

#archive
echo "archive" >> $log_path

# archive workspace
xcodebuild archive -workspace "$workspaceName" -scheme "$scheme" -configuration "$configuration" -exportFormat ipa -archivePath "$archivePath" #CONFIGURATION_BUILD_DIR="$configurationBuildDir" CODE_SIGN_IDENTITY="$codeSignIdentity" PROVISIONING_PROFILE="$provisioningProfile" >> $log_path

# archive Project
# xcodebuild -scheme $scheme -configuration $configuration -archivePath $archivePath

# AppStore验证/或者上传至各个服务器
