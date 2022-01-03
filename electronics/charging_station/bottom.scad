$fn=64;

difference() {
  union() {
    minkowski() {
      translate([2, 2, 0]) cube([100-2*2, 120-2*2, 1]);
      cylinder(h=1, r=2);
    }
    // Front left brace.
    translate([14, 14, 2]) difference() {
      cube([10, 10, 5]);
      translate([2, 2, 0]) cube([8, 8, 5]);
    }
    // Front right brace.
    translate([100-10-14+2, 14, 2]) difference() {
      cube([10, 10, 5]);
      translate([0, 2, 0]) cube([8, 8, 5]);
    }
    // Back left brace.
    translate([14, 120-10-2, 2]) difference() {
      cube([10, 10, 5]);
      translate([2, 0, 0]) cube([8, 8, 5]);
    }
    // Back right brace.
    translate([100-10-14+2, 120-10-2, 2]) difference() {
      cube([10, 10, 5]);
      translate([0, 0, 0]) cube([8, 8, 5]);
    }
  }
  union() {
    // Countersunk screw holes.
    translate([5, 5, 0]) union() {
      cylinder(h=5, d=3);
      translate([0, 0, 0]) cylinder(h=2, d1=5.9, d2=3);
    }
    translate([100-5, 5, 0]) union() {
      cylinder(h=5, d=3);
      translate([0, 0, 0]) cylinder(h=2, d1=5.9, d2=3);
    }
    translate([5, 120-5, 0]) union() {
      cylinder(h=5, d=3);
      translate([0, 0, 0]) cylinder(h=2, d1=5.9, d2=3);
    }
    translate([100-5, 120-5, 0]) union() {
      cylinder(h=5, d=3);
      translate([0, 0, 0]) cylinder(h=2, d1=5.9, d2=3);
    }
    
    // Temp jig.
//    translate([0, 0, 0]) cube([100, 14, 2]);
//    translate([0, 0, 0]) cube([14, 120, 2]);
//    translate([100-14+2, 0, 0]) cube([14, 120, 2]);
//    translate([14+2, 14+2, 0]) cube([70, 100, 2]);
//    translate([0, 0, 0]), cube([100, 120, 2]);
  }
}