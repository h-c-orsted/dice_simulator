/* 
  Call void rollDice(int) to do a roll. 
  Arguments: (int) is the count of rolls
*/


// Create array to hold the values
int[] results = new int[6];


void rollDice(int count) {
  float factor = 700 / (count/6*1.5);
  println("factor: " + factor);
  
  
  // Reset array and clear canvas
  results = new int[6];
  clear();
  
  text("Antal kast: " + count, 100, 50);
  
  // Do the dice rolls
  for (int i=0; i < count+1; i++) {
    results[int(random(0, 6))]++;
  }
   
  // Write results to log 
  println(results);
  
  // Create the graph showing the results
  for (int j=0; j < 6; j++) {
    text(results[j], 90+100*j, 690-(results[j] * factor));
    rect(50+100*j, 700-(results[j] * factor), 100, results[j]*factor);
  }
}


void setup() {
  size(700, 700);
  rollDice(900);
}


// Draw is required for mousePressed() to work
void draw() {}

// Do 1000 dice rolls when mouse is clicked
void mousePressed() {
  rollDice(10000);
}
