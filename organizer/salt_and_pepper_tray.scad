$fn = 256;

box_height = 30;
box_length = 110;
box_width = 60;

rounded = 2;

difference() {
  // Create rounded box.
  translate([2, 2, 0]) {
    minkowski() {
      cube([106, 56, 28], center=false);
      sphere(2);
    }
  }
  union() {
    // Shave off the bottom.
    translate([0, 0, -2]) {
      cube([110, 60, 2], center=false);
    }
    // Hollow 1st hole.
    translate([29.5, 30, 3]) {
      union() {
        translate([0, 0, 2]) cylinder(h=25, r1=0, r2=21.5);
        cylinder(h=27, r=18.5);
      }
    }
    // Hollow 2nd hole.
    translate([80.5, 30, 3]) {
      union() {
        translate([0, 0, 2]) cylinder(h=25, r1=0, r2=21.5);
        cylinder(h=27, r=18.5);
      }
    }
    // Shave off left bottom edge.
    translate([0, 60, 0]) {
      rotate([90, 0, 0]) {
        linear_extrude(60) {
          polygon([[0, 0], [2, 0], [0, 2]]);
        }
      }
    }
    // Shave off right bottom edge.
    translate([108, 60, 0]) {
      rotate([90, 0, 0]) {
        linear_extrude(60) {
          polygon([[0, 0], [2, 0], [2, 2]]);
        }
      }
    }
  }
}

