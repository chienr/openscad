$fn=64;

difference() {
  union() {
    minkowski() {
      translate([1, -15/2+1, 0]) cube([77-2*1, 15-2*1, 0.5]);
      cylinder(h=0.5, r=1);
    }
    // Left wall.
    translate([12, 1.5, 0]) cube([65, 1, 5]);
    translate([15+19*0, 2.5, 4]) sphere(d=2);
    translate([15+19*1, 2.5, 4]) sphere(d=2);
    translate([15+19*2, 2.5, 4]) sphere(d=2);
    translate([15+19*3, 2.5, 4]) sphere(d=2);

    // Right wall.
    translate([12, -2.5, 0]) cube([65, 1, 5]);
    translate([15+19*0, -2.5, 4]) sphere(d=2);
    translate([15+19*1, -2.5, 4]) sphere(d=2);
    translate([15+19*2, -2.5, 4]) sphere(d=2);
    translate([15+19*3, -2.5, 4]) sphere(d=2);
  }
  union() {
    translate([12, -1.5, 0]) cube([70, 3, 1]);
    translate([12, 0, 0]) cylinder(h=1, d=3);
    translate([76, -15/2, 0]) cube([1, 15, 5]);
    linear_extrude(height=5) polygon([[73, -1.5], [77, -1.5], [77, -2.5]]);
    linear_extrude(height=5) polygon([[73, 1.5], [77, 1.5], [77, 2.5]]);
  }
}

difference() {
  translate([12, 0, 1]) cylinder(h=4, d=5);
  union() {
    translate([12, -2.5, 1]) cube([5/2, 5, 4]);
    translate([12, 0, 1]) cylinder(h=4, d=3);
  }
}