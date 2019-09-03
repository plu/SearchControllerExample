# SearchControllerExample

This is a sample project to reproduces a bug on iOS 13.1 Beta.

## Environment

* iPhone Xs, iOS 13.1  (17A5821e)
* Xcode Version 11.0 beta 6 (11M392r) (supposed to be Beta 7)

## Steps

* Launch app
* Tap on left bar button item "Test"
* `OK` Alert controller is being presented
* Dismiss alert
* Tap on search bar
* Tap on cancel to close search bar
* Tap on left bar button item "Test"
* `NOK` nothing happens, left bar button item does not seem to receive touch event
