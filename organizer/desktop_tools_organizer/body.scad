$fn=64;

wall = 3.6;

difference() {
  minkowski() {
    translate([2, 2, 0]) cube([100-2*2, 50-2*2, 100-2]);
    cylinder(h=2, r=2);
  }
//  cube([100, 50, 100], center=false);
  union() {
    // Top screw holes.
    translate([0, 0, 100-9]) union() {
      translate([2, 2, 0]) cylinder(h=9, d=2);
      translate([2, 50-2, 0]) cylinder(h=9, d=2);
      translate([20-2, 2, 0]) cylinder(h=9, d=2);
      translate([20-2, 50-2, 0]) cylinder(h=9, d=2);

      translate([20+2, 2, 0]) cylinder(h=9, d=2);
      translate([20+2, 50-2, 0]) cylinder(h=9, d=2);
      translate([40-2, 2, 0]) cylinder(h=9, d=2);
      translate([40-2, 50-2, 0]) cylinder(h=9, d=2);

      translate([40+2, 2, 0]) cylinder(h=9, d=2);
      translate([40+2, 50-2, 0]) cylinder(h=9, d=2);
      translate([60-2, 2, 0]) cylinder(h=9, d=2);
      translate([60-2, 50-2, 0]) cylinder(h=9, d=2);

      translate([60+2, 2, 0]) cylinder(h=9, d=2);
      translate([60+2, 50-2, 0]) cylinder(h=9, d=2);
      translate([80-2, 2, 0]) cylinder(h=9, d=2);
      translate([80-2, 50-2, 0]) cylinder(h=9, d=2);

      translate([80+2, 2, 0]) cylinder(h=9, d=2);
      translate([80+2, 50-2, 0]) cylinder(h=9, d=2);
      translate([100-2, 2, 0]) cylinder(h=9, d=2);
      translate([100-2, 50-2, 0]) cylinder(h=9, d=2);
    }
    // Bottom screw holes.
    translate([0, 0, 0]) union() {
      translate([2, 2, 0]) cylinder(h=9, d=2);
      translate([2, 50-2, 0]) cylinder(h=9, d=2);
      translate([20-2, 2, 0]) cylinder(h=9, d=2);
      translate([20-2, 50-2, 0]) cylinder(h=9, d=2);

      translate([20+2, 2, 0]) cylinder(h=9, d=2);
      translate([20+2, 50-2, 0]) cylinder(h=9, d=2);
      translate([40-2, 2, 0]) cylinder(h=9, d=2);
      translate([40-2, 50-2, 0]) cylinder(h=9, d=2);

      translate([40+2, 2, 0]) cylinder(h=9, d=2);
      translate([40+2, 50-2, 0]) cylinder(h=9, d=2);
      translate([60-2, 2, 0]) cylinder(h=9, d=2);
      translate([60-2, 50-2, 0]) cylinder(h=9, d=2);

      translate([60+2, 2, 0]) cylinder(h=9, d=2);
      translate([60+2, 50-2, 0]) cylinder(h=9, d=2);
      translate([80-2, 2, 0]) cylinder(h=9, d=2);
      translate([80-2, 50-2, 0]) cylinder(h=9, d=2);

      translate([80+2, 2, 0]) cylinder(h=9, d=2);
      translate([80+2, 50-2, 0]) cylinder(h=9, d=2);
      translate([100-2, 2, 0]) cylinder(h=9, d=2);
      translate([100-2, 50-2, 0]) cylinder(h=9, d=2);
    }
    // Inside hollow.
    translate([wall, wall, 0])
      cube([100-wall*2, 50-wall*2, 100]);
    // Hexagons.
//    !translate() rotate([0, 0, 0]) union() {
//      translate([10, 10, 0]) cylinder(h=1, d=18, $fn=6);
//      translate([25, 20, 0]) cylinder(h=1, d=18, $fn=6);
//      translate([50, 10, 0]) cylinder(h=1, d=18, $fn=6);
//    }
  }
}