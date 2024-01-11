 rm negobuttons.rc; 
 for n in *_20.png; do printf 'NEGO_%s RCDATA  "%s" \n' "${n:0:2}" "$n"; 
 done 