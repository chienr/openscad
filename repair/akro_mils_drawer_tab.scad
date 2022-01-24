use <cube.scad>;

$fn=64;
r=0.5;

difference() {
  minkowski() {
    ccube(2.6-r*2, 4.5-r*2, 3.1);
    cylinder(h=0.1, r=r);
  }
  translate([0, -2, 3.2/2]) cube([2.6, 0.5, 3.2], center=true);
}