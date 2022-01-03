$fn=64;

color("white") {
  difference() {
    minkowski() {
      translate([0, 0, 15]) cube([65, 60, 30], center=true);
      sphere(2);
    }
    union() {
      translate([0, 0, 14]) cube([65, 60, 30], center=true);
      translate([0, 0, -1]) cube([69, 64, 2], center=true);
      
      // Hole for the potentiometer.
      translate([0, -60/2, 14.6]) rotate([90]) cylinder(h=2, r=4);
      
      // Hole for the wires.
      translate([12.2, 32, 9.2]) rotate([90]) cylinder(h=2, r=1);
      translate([4, 32, 9.2]) rotate([90]) cylinder(h=2, r=1);
      translate([-4, 32, 9.2]) rotate([90]) cylinder(h=2, r=1);
      translate([-12.2, 32, 9.2]) rotate([90]) cylinder(h=2, r=1);
    }
  }
  ScrewHole(25, 22.5);
  ScrewHole(25, -22.75);
  ScrewHole(-25, 22.75);
  ScrewHole(-25, -22.75);

}

module ScrewHole(x, y) {
  height=28;
  inner=1.75;
  outer=3;
  translate([x, y, 2]) {
    difference() {
      cylinder(h=height, r=outer);
      cylinder(h=height, r=inner);
    }
  }
}