    for f in single*html
		do
		    cp $f /tmp
		    cat instructions_blurb.html /tmp/$f >$f
		done