$fn=64;

difference() {
  union() {
    minkowski() {
      translate([5.5, 5.5, 0]) cube([74, 96, 9]);
      cylinder(h=1, r=5.5);
    }
  }
  union() {
    for (ty=[5, 56]) {
      for (tx=[15,85/2,85-15]) {
        for (i=[0:2.1:46.2]){
          translate([tx, ty+i, 13]) rotate([-110]) cylinder(h=2.1, d=25);
        }
      }
    }
  }
}

//for (i=[0:2.1:42.2]) {
//  translate([15, 58.1+i, 13]) rotate([-110]) cylinder(h=2.1, d=25);
//}
//translate([0, 0, -5]) cube([85, 107.4, 5]);
//translate([0, 0, 0]) cube([85, 107.4, 25]);
