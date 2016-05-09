# Chippewa Valley Bicycle Routes

## Web accessible demos

http://www.codeforeauclaire.org/bikeroutes/

http://codeforeauclaire.github.io/bikeroutes

## Proposed MVP

A native phone app that shows the bike routes in Eau Claire

### Supported platforms

* iOS
* Android

### Interface

Full screen map
* Display routes from data in /data
* Legend with the following checkboxes to toggle data off and on
 * Easy routes
 * Moderiate routes
 * Difficult routes
* With usual controls map will give us
 * Hopefully a 'show my location' button

### Technology

[React Native](https://facebook.github.io/react-native/)
 * Why
  * One code base
  * Native performance
  * Industry leaning this way
 * Specific
  * Option 1: [lelandrichardson/react-native-maps (Other Overlays)](https://github.com/lelandrichardson/react-native-maps)
  * Option 2: ??? Research more ???

[GitHub Pages](https://pages.github.com/)
 * Why
  * Easy hosting
  * We don't need complexity of client-server architechture
      * Data doesn't change often
      * Data is small enough to load all at once

## Background

Bicycle route data was gathered by a collaberative group and made accessible to us to do something awesome with.
