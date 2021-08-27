#!/bin/bash

TMPDIR="/tmp/vrchat-video"

filelock () {
	exec {LOCKFD}>$1
	flock -x $LOCKFD
}

fileunlock () {
	exec {LOCKFD}>&-
}

function fin(){
	youtube-dl $YTDL_ARGS
	fileunlock
	exit 0
}

YTDL_ARGS="$@"
VIDEO_LINK="$6"

LOCKFILE="/tmp/vrchat-video/ytdl.lock"

mkdir -p ${TMPDIR}

filelock ${LOCKFILE}

if [ -e ${TMPDIR}/ytdl-arg.log ]; then
	LAST_ARG=$(tail -n 1 ${TMPDIR}/ytdl-arg.log)
	echo "$@"
	echo "$LAST_ARG"
	if diff -q <(echo "$@") <(echo "$LAST_ARG") > /dev/null ; then
		#echo pass
		fin
	fi
fi
echo "$YTDL_ARGS" >> /tmp/vrchat-video/ytdl-arg.log
xdg-open "$VIDEO_LINK" > /dev/null

fin
