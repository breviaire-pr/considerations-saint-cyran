hiver temps:
81-82 manquant
97-98 en double

& 'C:\Program Files\gs\gs9.50\bin\gswin64c.exe' -dNOPAUSE -dBATCH -sDEVICE=pngmono -r220 -sOutputFile='pngs\FOLDER\FOLDER-%00d.png'

& 'C:\Program Files\gs\gs9.50\bin\gswin64c.exe' -dNOPAUSE -dBATCH -sDEVICE=pnggray -r300 -sOutputFile='pngs\ete\ete-6.png' -dFirstPage=6 -dLastPage=6 .\pdfs\considerations_ete.pdf

optipng.exe *.png

Get-ChildItem -Path . -Filter *.png -Recurse | Foreach { optipng.exe $_.fullname }
