# fruitydreambooth

### The Dreamy Raspberry Pi Photobooth

This is a project that combines a Raspberry Pi Photobooth with Twitter and QR Codes.

The core steps for a raspberry pi photobooth come from [MAKE magazine's photbooth article](http://makezine.com/projects/raspberry-pi-photo-booth/).

## Values of this project are:
- Silly
- Built on Ruby and Raspberry Pi
- Emphasizes open access and is democratic
- Respects user privacy
- Subverts the male gaze

## Target users for this project are:
Geeky Wedding guests

## Ideal use case for this project is:
Wedding guests are able to access QR codes using their phone to remotely take pictures using the photobooth. The QR code allows any wedding guest with a mobile phone that can connect to the internet to "take a photo". 
Guest photos are automatically tweeted from @frutidreambooth

## For privacy:
When the photobooth is turned off and on again access is reset.
QR Code requires that guests must have been in the same room as the photobooth - does not allow non-attendees to easily access the booth
The code does not make readiliy accessibleTwitter access keys
The photobooth is designed to notify via speaker when it is taking a photo (not currently functioning).

## For open access:
THe QR code democritizes access to the photo booth by side-stepping wifi and allowing guests to use their own data / wifi 


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
 
