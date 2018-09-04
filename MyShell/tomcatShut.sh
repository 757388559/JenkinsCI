#!/bin/sh
tomcatPath="/usr/local/Cellar/tomcat"
version="9.0.8"
shellPath="libexec/bin"

sh ${tomcatPath}/${version}/${shellPath}/shutdown.sh
