$fn=64;

difference() {
  union() {
//    translate([0, 2, 3]) rotate([90]) minkowski() {
//      linear_extrude(height=1) polygon([[0+2, 0], [25-2, 0], [0+2, 15-2]]);
//      cylinder(h=1, r=2);
//    }
//    translate([0, 30, 3]) rotate([90]) minkowski() {
//      linear_extrude(height=1) polygon([[0+2, 0], [25-2, 0], [0+2, 15-2]]);
//      cylinder(h=1, r=2);
//    }
//    translate([0, 2, 3]) rotate([90]) minkowski() {
//      linear_extrude(height=1) polygon([[120-2, 0], [120-25+2, 0], [120-2, 15-2]]);
//      cylinder(h=1, r=2);
//    }
//    translate([0, 30, 3]) rotate([90]) minkowski() {
//      linear_extrude(height=1) polygon([[120-2, 0], [120-25+2, 0], [120-2, 15-2]]);
//      cylinder(h=1, r=2);
//    }
    translate([7.5, 2, 7.5]) rotate([90]) union() {
      cylinder(h=2, d=13);
      translate([0, -6.5/2, 1]) cube([13, 6.5, 2], center=true);
    }
    translate([7.5, 30, 7.5]) rotate([90]) union() {
      cylinder(h=2, d=13);
      translate([0, -6.5/2, 1]) cube([13, 6.5, 2], center=true);
    }
    translate([120-7.5, 2, 7.5]) rotate([90]) union() {
      cylinder(h=2, d=13);
      translate([0, -6.5/2, 1]) cube([13, 6.5, 2], center=true);
    }
    translate([120-7.5, 30, 7.5]) rotate([90]) union() {
      cylinder(h=2, d=13);
      translate([0, -6.5/2, 1]) cube([13, 6.5, 2], center=true);
    }
  };
  union() {
    translate([7.5, 0, 7.5]) rotate([-90]) cylinder(h=30, d=4);
    translate([120-7.5, 0, 7.5]) rotate([-90]) cylinder(h=30, d=4);
  };
};

difference() {
  cube([120, 30, 3]);
  translate([60, 15, 1]) minkowski() {
    cube([110, 20, 3], center=true);
    cylinder(h=1, d=3);
  }
}
difference() {
  minkowski() {
    linear_extrude(height=2) polygon([[0+3, 30], [120-3, 30], [60, 50-3]]);
    cylinder(h=1, r=3);
  }
  union() {
    translate([60, 42, 0]) cylinder(h=3, d=10);
  }
};
translate([60, 60, 0]) cylinder(h=3, d=10);

//translate([6, 0, 6.5]) rotate([0, 90, 0]) cylinder(h=108, d=2);