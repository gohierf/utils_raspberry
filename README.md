RASPBERRY UTILS
===============

This is collection of scripts for use with Raspberry.

It has been designed an tested with:
- Raspberry PI 4, 4GB RAM
- Raspbian 04/2020, 32bits armhf
- Waveshare 15.6" touchscreen

Screen orientation
------------------

In order to have a widget to rotate the screen the following files have been implemented:
- toggle-orientation.sh
- 

To install create the folowing links (assuming you clone :
```bash
sudo ln -sf ${PWD}/toggle-orientation.sh /usr/bin/
```

Install VSCODE
--------------

Official VSCODE installation via *snap* is only available for 64bits arm64 architecture.

For 32bits armhf architecture follow these instructions:
https://pimylifeup.com/raspberry-pi-visual-studio-code/

```bash
wget https://packagecloud.io/headmelted/codebuilds/gpgkey -O - | sudo apt-key add -
curl -L https://raw.githubusercontent.com/headmelted/codebuilds/master/docs/installers/apt.sh | sudo bash
```

