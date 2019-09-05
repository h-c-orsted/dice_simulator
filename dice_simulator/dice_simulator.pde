// Create array to hold the values
int[] results = new int[6];


void rollDice(int count) {
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
    text(results[j], 90+100*j, 690-results[j]);
    rect(50+100*j, 700-results[j], 100, results[j]);
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
  rollDice(900);
}
