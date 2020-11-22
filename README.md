# crt-ready-retropie

[![Version](http://img.shields.io/:beta-0.0.2-green.svg)](https://github.com/tavuntu/crt-ready-retropie)

By default, emulated games (specially the ones in 2D) look bad when running on RetroPie in a CRT TV. By using this setup, you'll be able to make some improvements and have a much closer feeling to the orignal hardware. This project is based on [CRTPi-RCA](https://github.com/crtpi/CRTPi-RCA), thanks a lot to [ErantyInt](https://github.com/crtpi) and many other people who made this possible!

Here's a comparison on a Sony PVM 14N5U.

Without crt-ready-retropie:

[![bad.jpg](https://i.postimg.cc/4dGp93k0/bad.jpg)](https://postimg.cc/bG6GXpv0)

With crt-ready-retropie:

[![good.jpg](https://i.postimg.cc/3xycNk9F/good.jpg)](https://postimg.cc/w1pVbTC1)

#### Installation:

* Do a fresh install of Retropie in your RB Pi if you haven't already
* Connect the RB Pi to your network and open the terminal (via SSH is recommended)
* Run the next command:
```
curl -s https://raw.githubusercontent.com/tavuntu/crt-ready-retropie/main/setup.sh | bash -s
```

And that's it, you are all set to start adding games, configuring joysticks, etc.

---

If you want to know what's being done under the hood, look at `setup.sh`. In a nutshell, this is it:

:heavy_check_mark: A bunch of config files is downloaded

:heavy_check_mark: When unzziped, some files are added/overwritten

:heavy_check_mark: A new theme is installed and set as default (based on [240p-Theme](https://github.com/PietDAmore/240p-Theme))

---

#### Notes:

* This has been tested in Retropie 4.6 and 4.7.1, it should work on versions in between
* If roms were added before this, please run ```resetromdirs``` command in RetroPie-Setup > Configuration / Tools, and then reboot

If you can afford something more expensive and want a much better experience, please check [this](https://www.rgb-pi.com/) out, there's probably nothing better for emulation in CRTs, at least at the time I'm writing this.
