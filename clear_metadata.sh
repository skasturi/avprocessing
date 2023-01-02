#/bin/bash

# Lot of metadata such as address at which the audio is created, name of the encoder are recorded in the file.
# This is personal information and needs to be stripped.

# https://superuser.com/questions/441361/strip-metadata-from-all-formats-with-ffmpeg
ffmpeg -i Intro.m4a -map_metadata -1 -c:v copy -c:a copy -fflags +bitexact -flags:v +bitexact -flags:a +bitexact Intro-clean.m4a