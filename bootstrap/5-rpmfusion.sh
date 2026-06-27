#!/bin/bash

FEDORA_VER=$(rpm -E %fedora)
FREE_PATH=free/fedora/rpmfusion-free-release-${FEDORA_VER}.noarch.rpm
NONFREE_PATH=free/fedora/rpmfusion-nonfree-release-${FEDORA_VER}.noarch.rpm

BASE1=https://download1.rpmfusion.org
BASE2=https://mirrors.ustc.edu.cn/rpmfusion
BASE3=https://mirrors.aliyun.com/rpmfusion
BASE4=https://mirrors.163.com/rpmfusion

FREE_URL=${BASE1}/${FREE_PATH}
NONFREE_URL=${BASE1}/${NONFREE_PATH}

dnf install $FREE_URL
dnf install $NONFREE_URL

cat << EOF
==> FFmpeg
 dnf swap ffmpeg-free ffmpeg --allowerasing
==> AMD GPU
 dnf install mesa-va-drivers-freeworld
==> Intel GPU
 dnf install intel-media-driver
EOF
