module LightSwitchBody () {
  difference() {
    intersection() {
      minkowski() {
        cube([0.1, 45, 45], true);
        sphere(5);
      }
    }
    translate([-5, 0, 0])
    cube([10, 100, 100], true);
    cube([21, 13, 24], true);
  }
}

module LightSwitchButton () {
  translate([1, -6, 0])
    rotate([0, 20, 0]) cube([5, 12, 11]); 
  translate([1, -6, -11]) cube([5, 12, 11]);
}

$fn=10;

LightSwitchBody();
LightSwitchButton();