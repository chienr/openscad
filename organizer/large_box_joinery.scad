$fn=64;

joiner=[16, 8, 0.8];
button=[4, 4, 1.2];

//    AddJoineryX([uy/2-t-joiner.y/2, -uy/2+t+joiner.y/2]);
//    AddJoineryY([[0, uy/2-t, h-joiner.y/2]], [[0, -uy/2+t, h-joiner.y/2]]);

module AddJoineryX(offsets) {
  for (offset = offsets) {
    translate([0, offset, button.z+joiner.z/2])
        cube([joiner.x, joiner.y, joiner.z], center=true);
    for (x = [-joiner.x/4, joiner.x/4]) {
      translate([x, offset, 0]) cylinder(h=button.z, d=button.x);
    }
  }
}

module AddJoineryY(positives, negatives) {
  for (offset = positives) {
    translate([0, offset.y+joiner.z/2, offset.z])
        cube([joiner.x, joiner.z, joiner.y], center=true);
    for (x = [-joiner.x/4, joiner.x/4]) {
      translate([x, offset.y+joiner.z, offset.z])
          rotate([-90, 0, 0]) cylinder(h=button.z, d=button.x);
    }
  }
  for (offset = negatives) {
    translate([0, offset.y-joiner.z/2, offset.z])
        cube([joiner.x, joiner.z, joiner.y], center=true);
    for (x = [-4, 4]) {
      translate([x, offset.y-joiner.z, offset.z])
          rotate([90, 0, 0]) cylinder(h=button.z, d=button.x);
    }
  }
}

module Joiner() {
  scale=0.95;
  
  union() {
    translate([0, 0, joiner.z/2])
        cube([joiner.x*scale, joiner.y*scale, joiner.z], center=true);
    for (x = [-joiner.x/4, joiner.x/4]) {
      translate([x, 0, joiner.z]) cylinder(h=button.z, d=button.x*scale);
    }  
  }
 
}