# crt-ready-retropie

[![Version](http://img.shields.io/:beta-0.0.1-green.svg)](https://github.com/tavuntu/crt-ready-retropie)

### Configuration files to convert an unmodified Retropie setup to a CRT-ready version. Inspired and based on the [CRTPi-RCA](https://github.com/crtpi/CRTPi-RCA) project

With crt-ready-retropie:

[![good.jpg](https://i.postimg.cc/3xycNk9F/good.jpg)](https://postimg.cc/w1pVbTC1)

Without crt-ready-retropie:

### Steps:

* Do a fresh install if Retropie if you haven't already
* Connect the RB Pi to the Internet and open the terminal (via SSH is recommended)
* Run the next command:
```
sudo wget https://raw.githubusercontent.com/tavuntu/crt-ready-retropie/main/initial-setup.sh && sudo chmod +x initial-setup.sh && ./initial-setup.sh
```

And that's it, you are all set to start adding games, configuring joysticks, etc.


### Notes:

* This has been tested in Retropie 4.6 and 4.7.1, it should work on versions in between
* Only NTSC is supported right now, if you need PAL, look at [CRTPi-RCA](https://github.com/crtpi/CRTPi-RCA)
* After rebooting, a modified version of the [240p Honey](https://github.com/PietDAmore/240p-Theme) theme will be set and some test suite roms will be available
* NTSC progressive is always used both in games and EmulationStation
