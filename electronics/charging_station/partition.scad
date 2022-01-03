$fn=64;

difference() {
  union() {
    minkowski() {
      translate([2, 2, 0]) cube([90-2*2, 6-2*2, 12]);
      cylinder(h=1, r=2);
    }
    translate([5, 0, -2]) cube([12/1.01, 6, 2/1.01]);
    translate([90-5-12, 0, -2]) cube([12/1.01, 6, 2/1.01]);
  }
  union() {
    translate([11, 3, -2]) cylinder(h=15, d=3);
    translate([90-5-12+6, 3, -2]) cylinder(h=15, d=3);
  }
}