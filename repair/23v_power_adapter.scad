$fn=64;

wall=2.6;
r=9.2;
l=68.8;
w=29.2;
h=30.5;
ic=r-wall;

difference() {
  union() {
    difference() {
      // Case.
      translate([-0.5, 0.5, 15+2]) minkowski() {
        cube([l-(r*2)-3, w-(r*2)-3, 30], center=true);
        cylinder(h=1, r=r);
        rotate([90, 0]) cylinder(h=1, r=1);
        rotate([0, 90]) cylinder(h=1, r=1);
      }
      union() {
        // Chop off the top.
        translate([0, 0, 5+h]) cube([l, w, 10], center=true);
        
        // Hollow.
        translate([-0.5, 0.5, 2+15+wall]) minkowski() {
          cube([l-(wall*2)-(ic*2)-3, w-(wall*2)-(ic*2)-3, 30], center=true);
          cylinder(h=1, r=ic);
          rotate([90, 0]) cylinder(h=1, r=1);
          rotate([0, 90]) cylinder(h=1, r=1);
        }
         
        // Cable slot.
        translate([-l/2, -3.1, 30.5-1.8]) cube([wall, 6.2, 1.8]);
//        translate([-l/2+0.5, -3.1, 5.6]) cube([wall, 6.2, 1.8]);
        
        // Holds.
//        translate([0, -w-0.25, 30]) sphere(d=32);
//        translate([0, w-0.25, 30]) sphere(d=32);
      }
    };
    translate([-18, 4, 2]) cube([0.8, 8, 1]);
    translate([18-0.8, 4, 2]) cube([0.8, 8, 1]);
    
    // PCB slots.
    translate([-l/2+wall, 6.1, 2]) cube([3.0, 0.8, 26]);
    translate([-l/2+wall, 8.8, 2]) cube([3.0, 0.8, 26]);
    translate([l/2-wall-3.0, 6.1, 2]) cube([3.0, 0.8, 26]);
    translate([l/2-wall-3.0, 8.8, 2]) cube([3.0, 0.8, 26]);

    // Screw holes.
    translate([-29, -9, 0]) difference() {
      cylinder(h=30, d=5);
      cylinder(h=30, d=2);
    };    
    translate([29, -9, 0]) difference() {
      cylinder(h=30, d=5);
      cylinder(h=30, d=2);
    };
  };
//  union() {
//    translate([0, 0, 22]) cube([l, w, 30], center=true);
//    translate([-13, -0.5, 5]) cube([14.2, 6.6, 10], center=true);
//  };
}
//translate([0, 0, 40]) color("red") cube([l, w, h], center=true);
