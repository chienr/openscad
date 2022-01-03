$fn=64;

color("white") {
  difference() {
    minkowski() {
      cube([65, 60, 3.5], center=true);
      sphere(2);
    }
    union() {
      translate([-61/2, -56/2, -1.75]) cube([61, 56, 5.5]);
      translate([0, 0, 3]) cube([69, 64, 2], center=true);
      translate([25, 22.75, -4]) cylinder(h=10, r=1.75);
      translate([25, -22.75, -4]) cylinder(h=10, r=1.75);
      translate([-25, 22.75, -4]) cylinder(h=10, r=1.75);
      translate([-25, -22.75, -4]) cylinder(h=10, r=1.75);
      translate([26.5, 0, -4]) sphere(2);
      translate([-26.5, 0, -4]) sphere(2);
    }
  }
  
  // Lip
  difference() {
    translate([0, 0, 4]) cube([65, 60, 4], center=true);
    translate([0, 0, 4]) cube([61, 56, 4], center=true);
  }
  
  ScrewHole(25, 22.75);
  ScrewHole(25, -22.75);
  ScrewHole(-25, 22.75);
  ScrewHole(-25, -22.75);

}

module ScrewHole(x, y) {
  height=3.5;
  inner=1.75;
  outer=3;
  translate([x, y, -2]) {
    difference() {
      cylinder(h=height, r=outer);
      cylinder(h=height, r=inner);
    }
  }

}