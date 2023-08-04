// Main.pde
BloodPressureTracker bpTracker;

void setup() {
  size(400, 400);
  bpTracker = new BloodPressureTracker();
}

void draw() {
  background(255);
  bpTracker.display();
}

void keyPressed() {
  if (key == 's') {
    bpTracker.saveData();
  }
}
