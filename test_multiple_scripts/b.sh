#!/usr/bin/env bash
set -xe
echo "BBBB!!!"

# 试着访问没权限的目录
err_report() {
    echo "GOT EXPECTED ERROR"
	exit 0
}

# ERR只有bash支持
trap 'err_report $LINENO' ERR

ls /root
