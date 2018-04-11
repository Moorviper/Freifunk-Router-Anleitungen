# Freifunk-Router-Anleitungen
Latex Build Enviroment for several Gluon based Firmwares

[![Build Status](https://travis-ci.org/Moorviper/Freifunk-Router-Anleitungen.svg?branch=master)](https://travis-ci.org/Moorviper/Freifunk-Router-Anleitungen)

=== Known Issues ===

Incomplete ;-)

Todo

* complete spec's

* complete vector pictures for all router
...

# How to use the pictures with Meshviewer/hopglass

To get the required filename for the picture copy the Hardwarename which is shown on Meshviewer/hopglass.

as an example:
`VMware, Inc. VMware Virtual Platform`

paste it @ [https://meshdata.shivering-isles.com](https://meshdata.shivering-isles.com) which is thankfully provided by [https://github.com/SISheogorath](https://github.com/SISheogorath)

you will get:
`90025292 ` in this case.
then copy and rename the svg to 90025292.svg

A ready to use repo is [https://github.com/Moorviper/meshviewer_hwpics](https://github.com/Moorviper/meshviewer_hwpics)


# How to build with travis-CI

== not possible at this moment / WIP ==

```
touch .travis.yml
travis setup releases
```
Detected repository as Moorviper/Freifunk-Router-Anleitungen, is this correct? |yes|

`yes`

You will asked for your GitHub username and password:


```
Username: Moorviper
Password for Moorviper: ******************
```

```
File to Upload: anleitungen.tar.bz2     
```
Deploy only from Moorviper/Freifunk-Router-Anleitungen? |yes|

```
yes
```
Encrypt API key? |yes|

```
yes
```

Then you have a .travis.yml file which contains:


```
deploy:
  provider: releases
  api_key:
    secure: aEeNXJVI9ClUsFndD3/lbE/524TSsSzpxzI47+CTXWgrkAbQiGGpVNsKp1Slbsehvj0nkdZyATtbkGYWBKjJ9H2/dzRGAoZS++Jom/onMBnFU+BA2/IZHPutt2cK938EFo8DRqM2Xs5lAawTr4zxDyDY63XR7B0ekZcf4yxRTc1cdxmCL/iYAA4Si949Xg8J/uzBEYub/2l4N679iEer7P14mFdZGcSe+4aO9pTu8RuhhoPB0tbyTgO3UQZiLW7qRPuuSD1uVGCTQFPkGqynv+u/im6iuA+yuMQxRTKnsk8KPPlDm/tyU5rZo8DF8NwlxuD/lzOJo/gK3LxOuBqHKNi6oRtuGsV248LxKN4pdAODIcUZTyAIu3AD62P+LG52S+iaURSBpSlAg8PIrbU3AyKFWbIgDwf8L2BdCNZL/PGd258zqjbOR/S2kGqMMD5vknXRN4Q5ByIW5t+ouxBxY3Xf4XW9ZU7iP7QSfKD1ilzpP738mJ6uiDJvGQ0oGYB3g6Mw4RNKX97a2kjVWeDELtgpgspGISXkDwq8368sYFQol7t2BhnP/z3yLJpKcEOx+le+XW8/EqseZkAWf6BhKJEShrbw0rKAuMuv5WtpoKhgNrIGcsGhw4IUkFXqTWOmamzrYGHsgolwgmRCe7FOEB3396AhmwOdpsQCec4Wf1w=
  file: anleitungen.tar.bz2
  on:
    repo: Moorviper/Freifunk-Router-Anleitungen

```
Then you have to modify it:

```
sudo: required
dist: trusty
services:
  - docker
before_install:
  - docker pull moorviper/dockerlatex
install:
script:
  - bash build.sh
deploy:
  provider: releases
  api_key:
    secure: aEeNXJVI9ClUsFndD3/lbE/524TSsSzpxzI47+CTXWgrkAbQiGGpVNsKp1Slbsehvj0nkdZyATtbkGYWBKjJ9H2/dzRGAoZS++Jom/onMBnFU+BA2/IZHPutt2cK938EFo8DRqM2Xs5lAawTr4zxDyDY63XR7B0ekZcf4yxRTc1cdxmCL/iYAA4Si949Xg8J/uzBEYub/2l4N679iEer7P14mFdZGcSe+4aO9pTu8RuhhoPB0tbyTgO3UQZiLW7qRPuuSD1uVGCTQFPkGqynv+u/im6iuA+yuMQxRTKnsk8KPPlDm/tyU5rZo8DF8NwlxuD/lzOJo/gK3LxOuBqHKNi6oRtuGsV248LxKN4pdAODIcUZTyAIu3AD62P+LG52S+iaURSBpSlAg8PIrbU3AyKFWbIgDwf8L2BdCNZL/PGd258zqjbOR/S2kGqMMD5vknXRN4Q5ByIW5t+ouxBxY3Xf4XW9ZU7iP7QSfKD1ilzpP738mJ6uiDJvGQ0oGYB3g6Mw4RNKX97a2kjVWeDELtgpgspGISXkDwq8368sYFQol7t2BhnP/z3yLJpKcEOx+le+XW8/EqseZkAWf6BhKJEShrbw0rKAuMuv5WtpoKhgNrIGcsGhw4IUkFXqTWOmamzrYGHsgolwgmRCe7FOEB3396AhmwOdpsQCec4Wf1w=
  file: anleitungen.tar.bz2
  skip_cleanup: true
  on:
    repo: Moorviper/Freifunk-Router-Anleitungen
    tags: true
    all_branches: true

```

# License

All new drawn pictures except these for the virtual-maschines, the intel and AMD - Logos, and the raspberry-pi graphic (they are from other sources),
are released as:

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons Lizenzvertrag" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />Dieses Werk ist lizenziert unter einer <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Namensnennung - Nicht-kommerziell - Weitergabe unter gleichen Bedingungen 4.0 International Lizenz</a>.
