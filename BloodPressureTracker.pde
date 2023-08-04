// BloodPressureTracker.pde
class BloodPressureTracker {
  int systolic;
  int diastolic;
  String bpStatus;
  
  BloodPressureTracker() {
    systolic = 120;
    diastolic = 80;
    bpStatus = getBPStatus();
  }
  
  void display() {
    fill(0);
    textSize(32);
    text("Systolic: " + systolic, width/2, height/2 - 40);
    text("Diastolic: " + diastolic, width/2, height/2);
    text("Status: " + bpStatus, width/2, height/2 + 40);
  }
  
  String getBPStatus() {
    if (systolic < 120 && diastolic < 80) {
      return "Normal";
    } else if (systolic >= 120 && systolic <= 129 && diastolic < 80) {
      return "Elevated";
    } else if ((systolic >= 130 && systolic <= 139) || (diastolic >= 80 && diastolic <= 89)) {
      return "High Blood Pressure (Hypertension) Stage 1";
    } else if (systolic >= 140 || diastolic >= 90) {
      return "High Blood Pressure (Hypertension) Stage 2";
    } else if (systolic >= 180 || diastolic >= 120) {
      return "Hypertensive Crisis";
    } else {
      return "Unknown";
    }
  }
  
  void saveData() {
    // code to save data to file or send to server
  }
}
