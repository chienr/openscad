$fn=64;

difference() {
  union() {
    minkowski() {
      translate([0, 0, 5.4/2]) cube([46-4, 25, 5.4], center=true);
      cylinder(h=2, r=2);
    }
    translate([0, 0, 9.4]) difference() {
      cube([42, 16, 4], center=true);
      cube([0.8, 16, 4], center=true);
    }
  }
  union() {
    translate([0, -4, 0]) cylinder(h=1.5, d=15);
    translate([0, 4, 0]) cylinder(h=1.5, d=9.4);
    translate([0, 9.4/2-4, 0.75]) cube([9.4, 9.4, 1.5], center=true);
    translate([0, 0, 3.4/2+1.5]) cube([16, 25, 3.4], center=true);    
//    translate([0, 0, 7]) cube([20, 29, 10], center=true);
  }
}

//color([1, 0, 0]) translate([0, -4, 2]) cylinder(h=3.4, d=15);
//color([1, 1, 0]) translate([0, 4, 2]) cylinder(h=3.4, d=15);