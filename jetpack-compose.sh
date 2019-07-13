#!/bin/sh
mkdir ~/bin
PATH=~/bin:$PATH
#download the androidx project from google repo
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

#give access, create a new dir and move to new dir
chmod a+x ~/bin/repo
mkdir androidx-master-dev
cd androidx-master-dev

#init the AOSP
repo init -u https://android.googlesource.com/platform/manifest -b androidx-master-dev
repo sync -j8 -c 
