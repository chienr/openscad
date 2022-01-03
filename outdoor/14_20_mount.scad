$fn=64;

length = 30 * 1.01;
width = 30 * 1.01;
height = 6;

difference() {
  minkowski() {
    cube([length, width, height], center=true);
    cylinder(h=2, r=4);
  }
  union() {
    points = [
        [5, 5],
        [5.5, 3.7],
        [6, 2.8],
        [7, 1.7],
        [8, 1.0],
        [9, 0.56],
        [10, 0.22],
        [12, -0.24],
        [14, -0.53],
        [17, -0.8],
        [20, -1],
        [30, -1],
        [30, 5],
    ];
//    translate([0, 0, 2]) cube([length, width, 6.5], center=true);
    rotate_extrude() polygon(points);
    
    // 1/4-20 hole.
    translate([0, 0, -3]) cylinder(h=8, d=6);
    
    // Mount holes.
    translate([15, 15, -3]) cylinder(h=8, d=3);
    translate([-15, 15, -3]) cylinder(h=8, d=3);
    translate([15, -15, -3]) cylinder(h=8, d=3);
    translate([-15, -15, -3]) cylinder(h=8, d=3);

    // Countersinks.
    translate([15, 15, -3]) cylinder(h=3, d1=3, d2=7.2);
    translate([-15, 15, -3]) cylinder(h=3, d1=3, d2=7.2);
    translate([15, -15, -3]) cylinder(h=3, d1=3, d2=7.2);
    translate([-15, -15, -3]) cylinder(h=3, d1=3, d2=7.2);
  }
}