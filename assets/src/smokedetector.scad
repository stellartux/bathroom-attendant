use <lib.scad>;

module SmokeDetector (r=46, h=25) {
  difference() {
    union () {
      translate([0, 0, 5])
      intersection () {
        sphere(r-6);
        cylinder(h=h*0.8, r=r-2);
      }
      cylinder(h=h*0.2, r=r);
    }
    translate([0, 0, h*0.2]) {
      intersection () {
        union() {
          cube(r);
          translate([-r, -r, 0]) cube(r);
        }
        ConcentricCylinders(r * 0.67, h, r*0.03 , 7);
      }
      ConcentricCylinders(5, h, 1, depth=1);
    }
    translate([r*0.5, -r*0.15, h*0.2])
    cylinder(h=h+1, d=5);
    
  }
}

$fn=14;
SmokeDetector();
