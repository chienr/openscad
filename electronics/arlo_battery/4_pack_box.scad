$fn=64;

// Base.
difference() {
  minkowski() {
    translate([2, 2, 0]) cube([88-2*2, 104-2*2, 2]);
    cylinder(h=1, r=2);
  };
  union() {
    // Mounting holes for 18650 holders.
    translate([88/2-30, 104/2, 0]) cylinder(h=3, d=2);
    translate([88/2-10, 104/2, 0]) cylinder(h=3, d=2);
    translate([88/2+10+1.5, 104/2, 0]) cylinder(h=3, d=2);
    translate([88/2+30+1.5, 104/2, 0]) cylinder(h=3, d=2);

    // Mounting holes for box.
    translate([10, 5, 0]) cylinder(h=3, d=4);
    translate([88-10, 5, 0]) cylinder(h=3, d=4);
    translate([10, 104-5, 0]) cylinder(h=3, d=4);
    translate([88-10, 104-5, 0]) cylinder(h=3, d=4);
  };
};

// Box
translate([0, 10, 3]) difference() {
  union() {
    minkowski() {
      translate([2, 2, 0]) cube([88-2*2, 84-2*2, 29]);
      cylinder(h=1, r=2);
    };
  };
  union() {
    translate([2, 2, 0]) cube([84, 80, 30]);
    translate([0, 40-10, 30]) rotate([-90]) linear_extrude(height=20)
      polygon([[0, 0], [1, 0], [0, 5]]);
    translate([84+3, 40-10, 30]) rotate([-90]) linear_extrude(height=20)
      polygon([[0, 0], [1, 0], [1, 5]]);
  };
};

translate([0, 10, 3]) {
  translate([2, 10, 28]) sphere(d=2);
  translate([2, 74, 28]) sphere(d=2);
  translate([88-2, 10, 28]) sphere(d=2);
  translate([88-2, 74, 28]) sphere(d=2);
};

// Test jig.
//difference() {
//  minkowski() {
//    translate([2, 2, 0]) cube([88-2*2, 104-2*2, 1]);
//    cylinder(h=0.5, r=2);
//  };
//  union() {
//    // Mounting holes for 18650 holders.
//    translate([88/2-30, 104/2, 0]) cylinder(h=3, d=2);
//    translate([88/2-10, 104/2, 0]) cylinder(h=3, d=2);
//    translate([88/2+10+1.5, 104/2, 0]) cylinder(h=3, d=2);
//    translate([88/2+30+1.5, 104/2, 0]) cylinder(h=3, d=2);
//
//    // Mounting holes for box.
//    translate([10, 5, 0]) cylinder(h=3, d=4);
//    translate([88-10, 5, 0]) cylinder(h=3, d=4);
//    translate([10, 104-5, 0]) cylinder(h=3, d=4);
//    translate([88-10, 104-5, 0]) cylinder(h=3, d=4);
//  };
//};
//// Box
//translate([0, 10, 1.5]) difference() {
//  minkowski() {
//    translate([2, 2, 0]) cube([88-2*2, 84-2*2, 1]);
//    cylinder(h=0.5, r=2);
//  };
//  union() {
//    translate([2, 2, 0]) cube([84*1.01, 80*1.01, 1.5]);
//  };
//};
