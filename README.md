# microprofile [![Build Status](https://travis-ci.org/zeux/microprofile.svg?branch=master)](https://travis-ci.org/zeux/microprofile)
This is a fork of [microprofile by Jonas Meyer](https://bitbucket.org/jonasmeyer/microprofile).

microprofile is an embeddable CPU/GPU profiler with an in-app and HTML visualizers.

![Screenshot](https://pbs.twimg.com/media/BnvzublCEAA0Mqf.png:large)

## Features

* Hierarchical regions for timing sections of the code
* Labels for adding extra information in the form of strings to regions
* GPU regions (D3D11/GL) with GPU timestamp synchronization
* Counters for measuring various global values that change over time
* Graphing any region in real-time to observe differences over time
* Visualization using in-game UI, a web browser (buit-in server) or an HTML file
* Low overhead

## Platform support

microprofile is known to work on Windows XP and above, Linux, OSX, iOS, Android and Xbox One.

It should be easy to adapt to support any other platforms; pull requests are welcome!
