#!/usr/bin/env bash

# Iconset generator script

show_usage() {
  echo "
USAGE:

$(basename "$0") <source_image> <output_iconset_name>
  "
}

main() {

  if [ -z "$1" ] || [ -z "$2" ]
  then
    show_usage
    exit 1
  fi

  input_filepath="$1"
  output_iconset_name="$2.iconset"

  mkdir $output_iconset_name

  sips --resampleHeightWidth 16 16   $input_filepath --out "${output_iconset_name}/icon_16x16.png"
  sips --resampleHeightWidth 32 32   $input_filepath --out "${output_iconset_name}/icon_16x16@2x.png"
  sips --resampleHeightWidth 32 32   $input_filepath --out "${output_iconset_name}/icon_32x32.png"
  sips --resampleHeightWidth 64 64   $input_filepath --out "${output_iconset_name}/icon_32x32@2x.png"
  sips --resampleHeightWidth 128 128 $input_filepath --out "${output_iconset_name}/icon_128x128.png"
  sips --resampleHeightWidth 256 256 $input_filepath --out "${output_iconset_name}/icon_128x128@2x.png"
  sips --resampleHeightWidth 256 256 $input_filepath --out "${output_iconset_name}/icon_256x256.png"
  sips --resampleHeightWidth 512 512 $input_filepath --out "${output_iconset_name}/icon_256x256@2x.png"
  sips --resampleHeightWidth 512 512 $input_filepath --out "${output_iconset_name}/icon_512x512.png"

  iconutil -c icns $output_iconset_name

  rm -R $output_iconset_name
}


main "$@"
