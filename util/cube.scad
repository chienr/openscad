module ccube(x, y, z) {
  translate([0, 0, z/2]) cube([x, y, z], center=true);
}