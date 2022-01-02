$fn=64;

wall = 3.6;

difference() {
  minkowski() {
    translate([2, 2, 0]) cube([100-2*2, 50-2*2, 1]);
    cylinder(h=1, r=2);
  }
  union() {
    // Bottom screw holes.
    translate([0, 0, 0]) union() {
      translate([2, 2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([2, 50-2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([20-2, 2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([20-2, 50-2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }

      translate([20+2, 2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([20+2, 50-2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([40-2, 2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([40-2, 50-2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }

      translate([40+2, 2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([40+2, 50-2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([60-2, 2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([60-2, 50-2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }

      translate([60+2, 2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([60+2, 50-2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([80-2, 2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([80-2, 50-2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }

      translate([80+2, 2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([80+2, 50-2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([100-2, 2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
      translate([100-2, 50-2, 0]) union() {
        cylinder(h=9, d=2);
        cylinder(h=1.4, d1=3.9, d2=2);
      }
    }
  }
}

translate([wall, wall, 2]) cube([100-wall*2, 50-wall*2, 1.6]);
//minkowski() {
//  translate([wall*1.5, wall*1.5, 0]) cube([100-wall*3, 50-wall*3, 2]);
//  cylinder(h=2, r=2);
//}