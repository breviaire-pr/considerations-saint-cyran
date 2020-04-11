hiver temps:
81-82 manquant
97-98 en double

Hiver Saints 163
http://localhost:8000/pngs/hiver/hiver-692.png

& 'C:\Program Files\gs\gs9.50\bin\gswin64c.exe' -dNOPAUSE -dBATCH -sDEVICE=pngmono -r220 -sOutputFile='pngs\FOLDER\FOLDER-%00d.png'

& 'C:\Program Files\gs\gs9.50\bin\gswin64c.exe' -dNOPAUSE -dBATCH -sDEVICE=pnggray -r300 -sOutputFile='pngs\hiver\hiver-524.png' -dFirstPage=524 -dLastPage=524 .\pdfs\considerations_hiver.pdf

optipng.exe *.png

Get-ChildItem -Path . -Filter *.png -Recurse | Foreach { optipng.exe $_.fullname }
