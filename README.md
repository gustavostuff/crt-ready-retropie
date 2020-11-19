# crt-ready-retropie

[![Version](http://img.shields.io/:beta-0.0.1-green.svg)](https://github.com/tavuntu/crt-ready-retropie)

### Configuration files to convert an unmodified Retropie setup to a CRT-ready version. Inspired and based on the [CRTPi-RCA](https://github.com/crtpi/CRTPi-RCA) project

### Steps:

* Do a fresh install if Retropie
* Connect to the Internet and open the terminal (via SSH is recommended)
* Run ```sudo wget https://raw.githubusercontent.com/tavuntu/crt-ready-retropie/main/initial-setup.sh && sudo chmod +x initial-setup.sh && ./initial-setup.sh```

And that's it, you are all set to start adding games, configuring joysticks, etc.


### Notes:

* Only NTSC is supported right now, if you need PAL, look at [CRTPi-RCA](https://github.com/crtpi/CRTPi-RCA)
* After rebooting, a modified version of the [240p Honey](https://github.com/PietDAmore/240p-Theme) theme will be set and some test suite roms will be available
* NTSC progressive is always used both in games and EmulationStation
