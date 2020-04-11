hiver temps:
81-82 manquant
97-98 en double

& 'C:\Program Files\gs\gs9.50\bin\gswin64c.exe' -dNOPAUSE -dBATCH -sDEVICE=pngmono -r220 -sOutputFile='pngs\FOLDER\FOLDER-%00d.png'

& 'C:\Program Files\gs\gs9.50\bin\gswin64c.exe' -dNOPAUSE -dBATCH -sDEVICE=pnggray -r300 -sOutputFile='pngs\hiver\hiver-692.png' -dFirstPage=692 -dLastPage=692 .\pdfs\considerations_hiver.pdf

optipng.exe *.png

Get-ChildItem -Path . -Filter *.png -Recurse | Foreach { optipng.exe $_.fullname }
