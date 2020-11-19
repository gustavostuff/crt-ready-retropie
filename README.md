# crt-ready-retropie

[![Version](http://img.shields.io/:beta-0.0.1-green.svg)](https://github.com/tavuntu/crt-ready-retropie)

By default, emulated games (specially the ones in 2D) look bad when running on Retropie in a CRT TV. By using this setup, you'll be able to make some improvements  and have a much closer feeling to the orignal hardware. This project is based in [CRTPi-RCA](https://github.com/crtpi/CRTPi-RCA), thanks a lot to [ErantyInt](https://github.com/crtpi) and many other people who made this possible!

Here you have some pictures taken on a Sony PVM 14N5U.

Without crt-ready-retropie:

[![bad.jpg](https://i.postimg.cc/4dGp93k0/bad.jpg)](https://postimg.cc/bG6GXpv0)

With crt-ready-retropie:

[![good.jpg](https://i.postimg.cc/3xycNk9F/good.jpg)](https://postimg.cc/w1pVbTC1)

#### Installation:

* Do a fresh install of Retropie in your RB Pi if you haven't already
* Connect the RB Pi to the Internet and open the terminal (via SSH is recommended)
* Run the next command:
```
sudo wget https://raw.githubusercontent.com/tavuntu/crt-ready-retropie/main/initial-setup.sh && sudo chmod +x initial-setup.sh && ./initial-setup.sh
```

And that's it, you are all set to start adding games, configuring joysticks, etc.


#### Notes:

* This has been tested in Retropie 4.6 and 4.7.1, it should work on versions in between
* Only NTSC is supported right now, if you need PAL, look at [CRTPi-RCA](https://github.com/crtpi/CRTPi-RCA)
* After rebooting, a modified version of the [240p Honey](https://github.com/PietDAmore/240p-Theme) theme will be set and some test suite roms will be available
* For this setup, NTSC progressive is always used both in games and EmulationStation
* This is for composite video only so, while the quality increases a lot compared to the default looks, don't expect something identical to original hardware (black purity and color palettes may vary, for instance)
