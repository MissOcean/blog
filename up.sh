	#!/bin/sh
    echo "==========================="
    Pleaseenter="MANAGER"
    read -p "(请输入代码提交备注信息:):" Pleaseenter
    if [ "$Pleaseenter" = "" ]; then
        Pleaseenter="update"
    fi
    echo "==========================="
    echo "备注信息为:$Pleaseenter"
    echo "==========================="
    cp -R public/* .deploy
    cd .deploy
    git add .
    git commit -m "$Pleaseenter"
    git push origin master