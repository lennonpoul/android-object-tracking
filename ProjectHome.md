![http://1.bp.blogspot.com/-OK6eYcEnXY8/TfzKlj8k4OI/AAAAAAAABKM/_8x2__BVDWA/s1600/iblognet-android-chrome-themes.png](http://1.bp.blogspot.com/-OK6eYcEnXY8/TfzKlj8k4OI/AAAAAAAABKM/_8x2__BVDWA/s1600/iblognet-android-chrome-themes.png)
# Introduction #

This wiki explains our soccer robot project that we completed for our senior design project at Miami University. The project utilized an android smart-phone interfaced with an Arduino micro controller. The phone is responsible for tracking the object and outputting a tone that changes with the required direction change of the robot. The micro controller is responsible for interpreting the correct direction to steer the robot based on the output from the phone.


# Details #
See our working prototype [Youtube Android Object Tracking Robot](http://www.youtube.com/watch?v=KFXcn-1046A)

The following items are necessary to complete a working prototype similar to ours:
  * Any Android smart-phone
  * Arduino [Uno](http://www.arduino.cc/en/Main/arduinoBoardUno) microcontroller
  * Arduino motor controller [shield](http://www.adafruit.com/products/81)
  * Two DC motors
  * Ball caster for rear wheel
  * 9v battery to power Arduino and 4 AA batteries to power the motors
  * Wheels and robot body (wheel choice and body is up to you)

The [Robot shop](http://www.robotshop.com/) and [Pololu](http://www.pololu.com/) are both good places to start your search for parts

# Steps to get a working prototype #
  1. Design and build your robot platform
> > ![http://i40.tinypic.com/1zz3tw9.jpg](http://i40.tinypic.com/1zz3tw9.jpg)
  1. Get the object tracking [source code](http://code.google.com/p/android-object-tracking/source/browse/) for your Android phone from the source section
> > Compatible with Android version 2.1, 2.2, 2.3. The app utilizes the OpenCV library
> > 3.0 ported to the Android platform. The recommended approach is to download the
> > prebuilt [OpenCV](http://sourceforge.net/projects/opencvlibrary/files/opencv-android/2.3.1/) package
  1. The app tracks an object but offers no strategy for your robot. You must add your own strategy based on how you want the robot to behave (see our code  [here](http://code.google.com/p/android-object-tracking/source/browse/soccerRobot.java) for an overview of how to get started)
  1. Get the [Arduino](http://code.google.com/p/android-object-tracking/source/browse/arduino) interface code from the download section and program your Arduino to accept input from the phone. The app will output a tone that tells the Arduino which direction to run the motors.
  1. Test your robot to insure that it behaves correctly
  1. If you think you have a good design challenge an opponent to see who has the better design

# Resources #
  * Quick Start [Tutorial](http://opencv.itseez.com/doc/tutorials/introduction/android_binary_package/android_binary_package.html): Using Android binary package with Eclipse
  * User Communities: [Android-OpenCV](https://groups.google.com/group/android-opencv) group