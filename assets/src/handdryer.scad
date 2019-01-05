$fn=10;

module HandDryer () {
  color("#e3ecdd")
  difference () {
    minkowski () {
      difference() {
        cube([210, 150, 114], true);
        translate([0, 140, 40])
           rotate([-30, 0, 0])
          cube([300, 300, 100], true);
        translate([-105, 0, 55])
          cube([50, 300, 50], true);
        translate([65, 0, 55])
          cube([140, 300, 50], true);
      }
      sphere(25);
    }
    translate([0, 0, -85])
      cube([300, 300, 40], true);
    translate([-45, -80, 35])
      cube([65, 50, 50], true);
    translate([65, -30, 50])
      cube([70, 45, 40], true);
  }
  difference () {
    color("#dddddd")
      translate([65, -30, 40])
      cube([80, 55, 40], true);
    translate([65, -30, 40])
      cube([65, 40, 45], true);
  }
}

module Button () {
  color("#eeeeee")
    translate([65, -55, -30])
    cube([65, 40, 40], true);
}

rotate([90, 0, 0])
HandDryer();
Button();