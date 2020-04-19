param ([string]$file)
$output = $file -replace '^\.\\', ''
echo "trimming file $output"
magick.exe $file -shave 5x30 `( `+clone -virtual-pixel white -blur 0x15 -fuzz 15% -trim -set option:fuzzy_trim '%[fx:w+100]x%[fx:h+100]+%[fx:page.x-50]+%[fx:page.y-50]' `+delete `) -crop `%[fuzzy_trim] trimmed-$output