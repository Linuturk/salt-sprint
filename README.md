salt-sprint
===========

## Current Slide Builds
* [Fundamental Slides](http://jenkins.onitato.com:8080/job/Salt%20Sprint%20Slides/ws/output/fundamentals/index.html#/)
* [Operational Slides](http://jenkins.onitato.com:8080/job/Salt%20Sprint%20Slides/ws/output/operational/index.html#/)
* [Lunch and Learn Slides](http://jenkins.onitato.com:8080/job/Salt%20Sprint%20Slides/ws/output/lunchlearn/index.html#/)

[![Build Status](http://jenkins.onitato.com:8080/job/Salt%20Sprint%20Slides/badge/icon)](http://jenkins.onitato.com:8080/job/Salt%20Sprint%20Slides/)

## Infrastructure

There are a few components of this repository.

* Python scripts built to automate syntax checks and yaml combinations. Credit to [sivel](https://github.com/sivel/yaml-slide-template).
* Yaml to slide.js tool called [Revelator](https://github.com/mpdehaan/revelator). [Examples](https://github.com/mpdehaan/revelator/blob/master/test.yml).
* Jenkins and builder.sh to run tests and autobuild the slides for each commit.

Branch for the chapter you are working on, and don't forget to pull before you try to merge and push.
