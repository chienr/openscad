thick=4;

// Top.
for (x = [0:16]) {
  translate([x*10, 0, 0]) cube([1, 161, thick]);
}
for (y = [0:16]) {
  translate([0, y*10, 0]) cube([161, 1, thick]);
}

// Bottom.
//difference() {
//  translate([2.4, 2.4, 0]) {
//    for (x = [0:14]) {
//      translate([x*10+7.1, 0, 0]) cube([1, 160-4.8, thick]);
//    }
//    for (y = [0:14]) {
//      translate([0, y*10+7.1, 0]) cube([160-4.8, 1, thick]);
//    }
//  }
//  union() {
//    translate([110.5, 30.5, 0]) cube([19, 19, thick]);
//    translate([110.5, 70.5, 0]) cube([19, 19, thick]);
//    translate([110.5, 110.5, 0]) cube([19, 19, thick]);
//  }
//}
//translate([2.4, 2, 0]) rotate([0, 90]) cylinder(h=7.1, d=2);
//translate([150.5, 2, 0]) rotate([0, 90]) cylinder(h=7.1, d=2);