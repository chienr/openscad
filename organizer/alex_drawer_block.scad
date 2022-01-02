$fn=64;
// Corner radius
r=2;
u=98/3;  // unit ~32.67
// Height
//h=44/2;
h=30;
// Wall thickness
t=2;

ux=u*2;
uy=u*3;

//joiner=[16, 8, 0.8];
//button=[4, 4, 1.2];

difference() {
  union() {
    minkowski() {
      translate([0, 0, (h-2)/2]) cube([ux-r*2, uy-r*2, h-2], center=true);
      cylinder(h=2, r=r);
    }
  }
  union() {
//    AddHollowBox();
    AddAABatterySilos();
//    AddAAABatterySilos();
//    AddJoineryX([uy/2-t-joiner.y/2, -uy/2+t+joiner.y/2]);
//    AddJoineryY([[0, uy/2-t, h-joiner.y/2]], [[0, -uy/2+t, h-joiner.y/2]]);
  }
}
//AddDivider();

module AddCornerHoles() {
  for (x = [-ux/2, ux/2]) {
    for (y = [-uy/2, uy/2]) {
      translate([x, y, 0]) {
        translate([0, 0, 22]) sphere(r=10);
      }
    }
  }
}

module AddHollowBox() {
  minkowski() {
    translate([0, 0, (h-2)/2+t]) cube([ux-t*2-r*2, uy-t*2-r*2, h-2], center=true);
    cylinder(h=2, r=r);      
  }
}

module AddDivider() {
  height=h*0.8;
  translate([0, 0, height/2]) cube([t, uy, height], center=true);
}

module AddAABatterySilos() {
  for (x = [-24 : 16 : 24]) {
    for (y = [-40 : 16 : 40]) {
      translate([x, y, 0]) union() {
        translate([0, 0, 2.2]) cylinder(h=h, d=15.0);
        translate([0, 0, 0.4]) cylinder(h=1.8, d=5.7);
      }
    }
  }
}

module AddAAABatterySilos() {
  for (x = [-25 : 12.5 : 25]) {
    for (y = [-42 : 12 : 42]) {
      translate([x, y, 0]) union() {
        translate([0, 0, 2.0]) cylinder(h=h, d=10.9);
        translate([0, 0, 0.4]) cylinder(h=1.6, d=4.0);
      }
    }
  }
}

//module AddJoineryX(offsets) {
//  for (offset = offsets) {
//    translate([0, offset, button.z+joiner.z/2])
//        cube([joiner.x, joiner.y, joiner.z], center=true);
//    for (x = [-joiner.x/4, joiner.x/4]) {
//      translate([x, offset, 0]) cylinder(h=button.z, d=button.x);
//    }
//  }
//}
//
//module AddJoineryY(positives, negatives) {
//  for (offset = positives) {
//    translate([0, offset.y+joiner.z/2, offset.z])
//        cube([joiner.x, joiner.z, joiner.y], center=true);
//    for (x = [-joiner.x/4, joiner.x/4]) {
//      translate([x, offset.y+joiner.z, offset.z])
//          rotate([-90, 0, 0]) cylinder(h=button.z, d=button.x);
//    }
//  }
//  for (offset = negatives) {
//    translate([0, offset.y-joiner.z/2, offset.z])
//        cube([joiner.x, joiner.z, joiner.y], center=true);
//    for (x = [-4, 4]) {
//      translate([x, offset.y-joiner.z, offset.z])
//          rotate([90, 0, 0]) cylinder(h=button.z, d=button.x);
//    }
//  }
//}