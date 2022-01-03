$fn=64;

difference() {
  minkowski() {
    translate([2, 2, 0]) cube([100-2*2, 120-2*2, 4]);
    cylinder(h=1, r=2);
  }
  union() {
    // Countersunk screw holes.
    translate([5, 5, 0]) union() {
      cylinder(h=5, d=3);
      translate([0, 0, 3]) cylinder(h=2, d1=3, d2=5.9);
    }
    translate([100-5, 5, 0]) union() {
      cylinder(h=5, d=3);
      translate([0, 0, 3]) cylinder(h=2, d1=3, d2=5.9);
    }
    translate([5, 120-5, 0]) union() {
      cylinder(h=5, d=3);
      translate([0, 0, 3]) cylinder(h=2, d1=3, d2=5.9);
    }
    translate([100-5, 120-5, 0]) union() {
      cylinder(h=5, d=3);
      translate([0, 0, 3]) cylinder(h=2, d1=3, d2=5.9);
    }
    
    // Slots.
    translate([16, 2, 0]) union() {
      translate([0, 1, 0]) union() {
        translate([-1.5, 1.5, 0]) cube([3, 111, 5]);
        translate([0, 1.5, 0]) cylinder(h=5, d=3);
        translate([0, 111+1.5, 0]) cylinder(h=5, d=3);
      }
      translate([-6, 0, 3]) cube([12, 116, 2]);
    }
    translate([100-16, 2, 0]) union() {
      translate([0, 1, 0]) union() {
        translate([-1.5, 1.5, 0]) cube([3, 111, 5]);
        translate([0, 1.5, 0]) cylinder(h=5, d=3);
        translate([0, 111+1.5, 0]) cylinder(h=5, d=3);
      }
      translate([-6, 0, 3]) cube([12, 116, 2]);
    }
  }
}
