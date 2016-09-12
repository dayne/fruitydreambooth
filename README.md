# fruitydreambooth

### The Dreamy Raspberry Pi Photobooth

This is a project that combines a Raspberry Pi Photobooth with Twitter's API and QR Codes.

The core steps for a raspberry pi photobooth come from [MAKE magazine's photbooth article](http://makezine.com/projects/raspberry-pi-photo-booth/).

## Values of this project are:
- Silly
- Built on Ruby and Raspberry Pi
- Emphasizes open access and is democratic
- Respects user privacy
- Subverts the male gaze

## Target users for this project are:
Geeky Wedding guests

## Imagined use case for this project is:
Wedding guests with mobile phones can remotely take pictures using the Pi photobooth. The QR code allows any wedding guest with a mobile phone that can connect to the internet to "take a photo" and tweet it from the @frutidreambooth twitter account.

## For privacy:
- When the photobooth is turned off and on again access to the booth / twitter acct is reset.
-The QR Code requires that guests at one point must have been in the same room as the photobooth (prohibiting non-attendees from easily accessing the booth)
-The code does not make Twitter access keys readiliy accessible
- The photobooth is designed to notify the room via a bluetooth speaker when it is taking a photo (Feature not currently functioning).

## For open access:
- The QR code democratizes access to the photobooth by side-stepping wifi and allowing guests to use their own data plans / wifi access.
- The QR code democratizes access to the photobooth by allowing any guest to be the photographer
- The Twitter interface democratizes access to photos - allowing anyone with itnernet access to view photos and download photos. Twitter users can retweet and tag photos.


## setup

We'll see where this goes.  Currently:

    ./bootstrap.sh


## Collaborators

* @dayne
* @vlraymond
* @teknofire
* @ferrio

## hacking notes

Using @wyolum's TouchSelfie. If mega hacking happens to TouchSelfie and we want to pull those in use the git pull subtree option.

   git pull -s subtree
   
## Twittering
 
 @frutidreambooth
 
