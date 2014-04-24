#!/bin/bash
# Build script that should simplify Jenkins configuration.

# Exit if any command returns non-zero
set -e


if [ -d revelator ]; then
  echo "******** Checking for latest version of Revelator ********"
  cd revelator
  git pull
  cd ..
else
  echo "******** Downloading Revelator ********"
  git clone https://github.com/mpdehaan/revelator.git
  ln -fs revelator/reveal_js_261
fi

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
    echo "******** Hacking stylesheets for $i ********"
    sed -e '32s/#eeeeee/#000000/'  -i bak output/$i/css/theme/default.css
    sed -e '49s/#eeeeee/#000000/'  -i bak output/$i/css/theme/default.css
  done
