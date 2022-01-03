$fn=64;

difference() {
  minkowski() {
    translate([0, 0, 1]) cylinder(h=78, r=22);
    sphere(1);
  }
  union() {
    translate([0, 0, 76]) {
      rotate_extrude() translate([23, 0, 0]) circle(r=1);
    }
    translate([0, 0, 80]) {
      rotate_extrude() translate([18, 0, 0]) circle(r=2);
    }
    translate([0, 0, 80]) {
      rotate_extrude() translate([5, 0, 0]) circle(r=1);
    }
  }
}