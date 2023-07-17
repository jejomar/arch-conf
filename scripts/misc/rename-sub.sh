#!/bin/bash
for f in *.srt; do mv -v "$f" "${f%-KPA.srt}.srt"; done

