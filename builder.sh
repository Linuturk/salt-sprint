#!/bin/bash
# Build script that should simplify Jenkins configuration.

echo "******** Setting up Revelator ********"
rm -rf revelator
git clone https://github.com/mpdehaan/revelator.git
ln -fs revelator/reveal_js_261

echo "******** Looping over folders ********"
for i in fundamentals lunchlearn operational
do
    echo "******** Syntax Check on $i ********"
    python syntax_check.py $i/*.yml
    echo "******** Creating output folder for $i ********"
    mkdir -p output/$i
    echo "******** Build Single on $i ********"
    python build_single.py $i > $i_comp.yml
    echo "******** Generating Slides on $i ********"
    python revelator/write_it $i_comp.yml output/$i
done
