// Step 1. Import the video library
import processing.video.*;
// Step 2. Declare a Capture object
Capture video;

void setup() {
  size(320,240);
  
  // Step 3. Initialize Capture object via Constructor
  // video is 320 x 240, @15 fps
  video = new Capture(this,320,240, 15);
  
  // Step 4. Start capturing frames
  video.start();
  
}

void draw() {
  // Check to see if a new frame is available
  if (video.available()) {
    // If so, read it.
    video.read();
  } 
  else
  {
    println("No video detected");
  }
  
  // Playing with video tint
  //tint(mouseX,mouseY,255);
  
  // Display the video image (aka the video frame)
  image(video,0,0);
}