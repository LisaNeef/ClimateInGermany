all:  html zip  

plotcopy:
	cp ../single*html .

plotblurb: instructions_blurb.md plotcopy

	pandoc --standalone -H style_chmduquesne.css \
        --from markdown --to html \
        -o instructions_blurb.html instructions_blurb.md 

addblurb: plotblurb  
	./addblurb.sh  

html: addblurb schneefall_in_deutschland.md style_chmduquesne.css  
	pandoc --standalone -H style_chmduquesne.css \
        --from markdown --to html \
        -o schneefall_in_deutschland.html schneefall_in_deutschland.md

tar: html 
	tar -cf schneefall_in_deutschland.tar *.html 

zip:  html 
	zip -9 -y -r -q copytest_lisaneef.zip *.html

clean: 
	rm *.html 
