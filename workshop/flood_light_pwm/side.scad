$fn=64;

difference() {
  minkowski() {
    translate([0, 0, 0.5]) cube([37.8, 14.8, 1], center=true);
    cylinder(h=1, r=11.7);
  }
  translate([19, 0, 0]) union() {
    translate([0, 7.4, 0]) cylinder(h=2, r=7.8);
    translate([0, -7.4, 0]) cylinder(h=2, r=7.8);
    translate([0, 0, 1]) cube([15.6, 15, 2], center=true);
  }
}

//minkowski() {
//  translate([5, 5, 0]) cube([10, 10, 8], center=false);
//  cylinder(h=2, r=5);
//}

translate([-28.9, 7.4, 2]) {
  rotate([90, 0, 0]) {
    linear_extrude(14.8) {
      polygon([[0, 0], [2, 0], [2, 11], [0, 11]]);
    }
  }
}

translate([-26.9, 0, 10]) sphere(2);