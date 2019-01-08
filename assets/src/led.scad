module LED (d=5) {
  cylinder(d=d, h=d);
  translate([0, 0, d])
  sphere(d/2);
}

$fn=9;
LED();