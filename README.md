salt-sprint
===========

[![Build Status](https://drone-opsdev.rax.io/github.com/linuturk/salt-sprint/status.svg?branch=master)](https://drone-opsdev.rax.io/github.com/linuturk/salt-sprint)

## Current Slide Builds (CDN TTL Applies
* [Fundamental Slides](http://a01c33cae57b04256ae1-47f2ef25871c59f3305851dd122db9d6.r14.cf5.rackcdn.com/fundamentals/#/)
* [Operational Slides](http://a01c33cae57b04256ae1-47f2ef25871c59f3305851dd122db9d6.r14.cf5.rackcdn.com/operational/#/)
* [Lunch and Learn Slides](http://a01c33cae57b04256ae1-47f2ef25871c59f3305851dd122db9d6.r14.cf5.rackcdn.com/lunchlearn/#/)


## Infrastructure

There are a few components of this repository.

* Python scripts built to automate syntax checks and yaml combinations. Credit to [sivel](https://github.com/sivel/yaml-slide-template).
* Yaml to slide.js tool called [Revelator](https://github.com/mpdehaan/revelator). [Examples](https://github.com/mpdehaan/revelator/blob/master/test.yml).
* Drone and builder.sh to run tests and autobuild the slides for each commit.

Branch for the chapter you are working on, and don't forget to pull before you try to merge and push.
