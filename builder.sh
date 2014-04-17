#!/bin/bash
# Build script that should simplify Jenkins configuration.

rm -rf revelator
git clone https://github.com/mpdehaan/revelator.git
ln -fs revelator/reveal_js_261

folders=( fundamentals lunchlearn )
for i in "${array[@]}"
do
    python syntax_check.py $i/*.yml
    mkdir -p output/$i
    python build_single.py $i > $i_comp.yml
    python revelator/write_it $i_comp.yml output/$i
done

#python syntax_check.py fundamentals/*.yml
#python syntax_check.py lunchlearn/*.yml
#
#mkdir -p output/fundamentals
#mkdir -p output/lunchlearn
#
#python build_single.py fundamentals > fund_compilation.yml
#python build_single.py lunchlearn > lunchlearn_compilation.yml
#
#python revelator/write_it fund_compilation.yml output/fundamentals
#python revelator/write_it lunchlearn_compilation.yml output/lunchlearn
