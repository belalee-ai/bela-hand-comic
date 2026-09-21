#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 8 ]; then
  echo "Usage: $0 OUTPUT.png PANEL1.png PANEL2.png PANEL3.png PANEL4.png PANEL5.png PANEL6.png PANEL7.png" >&2
  exit 2
fi

output_path="$1"
shift

if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "ffmpeg is required." >&2
  exit 127
fi

if [ -e "$output_path" ]; then
  echo "Output already exists: $output_path" >&2
  exit 3
fi

for panel_path in "$@"; do
  if [ ! -f "$panel_path" ]; then
    echo "Missing panel: $panel_path" >&2
    exit 4
  fi
done

panel_1="$1"
panel_2="$2"
panel_3="$3"
panel_4="$4"
panel_5="$5"
panel_6="$6"
panel_7="$7"

ffmpeg -hide_banner -loglevel error \
  -i "$panel_1" \
  -i "$panel_2" \
  -i "$panel_3" \
  -i "$panel_4" \
  -i "$panel_5" \
  -i "$panel_6" \
  -i "$panel_7" \
  -filter_complex "color=c=0xf7f1e7:s=1536x2048:d=1[bg];\
[0:v]scale=640:480:force_original_aspect_ratio=decrease,pad=640:480:(ow-iw)/2:(oh-ih)/2:color=0xf7f1e7,pad=646:486:3:3:color=0xb8ae9e,setsar=1[p1];\
[1:v]scale=640:480:force_original_aspect_ratio=decrease,pad=640:480:(ow-iw)/2:(oh-ih)/2:color=0xf7f1e7,pad=646:486:3:3:color=0xb8ae9e,setsar=1[p2];\
[2:v]scale=640:480:force_original_aspect_ratio=decrease,pad=640:480:(ow-iw)/2:(oh-ih)/2:color=0xf7f1e7,pad=646:486:3:3:color=0xb8ae9e,setsar=1[p3];\
[3:v]scale=640:480:force_original_aspect_ratio=decrease,pad=640:480:(ow-iw)/2:(oh-ih)/2:color=0xf7f1e7,pad=646:486:3:3:color=0xb8ae9e,setsar=1[p4];\
[4:v]scale=640:480:force_original_aspect_ratio=decrease,pad=640:480:(ow-iw)/2:(oh-ih)/2:color=0xf7f1e7,pad=646:486:3:3:color=0xb8ae9e,setsar=1[p5];\
[5:v]scale=640:480:force_original_aspect_ratio=decrease,pad=640:480:(ow-iw)/2:(oh-ih)/2:color=0xf7f1e7,pad=646:486:3:3:color=0xb8ae9e,setsar=1[p6];\
[6:v]scale=680:510:force_original_aspect_ratio=decrease,pad=680:510:(ow-iw)/2:(oh-ih)/2:color=0xf7f1e7,pad=686:516:3:3:color=0xb8ae9e,setsar=1[p7];\
[bg][p1]overlay=112:18[t1];\
[t1][p2]overlay=778:18[t2];\
[t2][p3]overlay=112:518[t3];\
[t3][p4]overlay=778:518[t4];\
[t4][p5]overlay=112:1018[t5];\
[t5][p6]overlay=778:1018[t6];\
[t6][p7]overlay=425:1518[out]" \
  -map '[out]' \
  -frames:v 1 \
  -update 1 \
  "$output_path"

echo "$output_path"
