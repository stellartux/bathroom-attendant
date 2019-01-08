module ConcentricCylinders (r, h, diff, depth = 0) {
  if (depth == 0) {
    cylinder(r=r, h=h);
  } else {
    difference() {
      cylinder(r=r, h=h);
      intersection() {
        translate([0, 0, -1])
        ConcentricCylinders(r=r-diff, h=h+2,
          diff=diff, depth=depth-1);
        cylinder(r=r, h=h);
      }
    }
  }
}
