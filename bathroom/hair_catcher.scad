$fn=64;

poles = 32;
radius = 28;
thick = 2.5;
offset = 360/poles/2;

module Ring() {
  difference() {
    cylinder(h=2, d=radius*2+thick);
    cylinder(h=2, d=radius*2-thick);
  }
}

difference() {
  union() {
    // Colliseum.
    for (i = [1:poles]) {
      translate([sin(360*i/poles+offset)*radius, cos(360*i/poles+offset)*radius, 0])
      cylinder(h=10, d=2.6);
    }
    // Colliseum.
    for (i = [1:16]) {
      translate([sin(360*i/16)*radius, cos(360*i/16)*radius, 10])
      cylinder(h=6, d=2.5);
    }
    // Double rings.
    translate([0, 0, 10]) Ring();
    translate([0, 0, 16]) Ring();
    // Stoppers.
    translate([2.8, radius, 2.6/2]) cube([2.6, 2.6, 2.6], center=true);
    translate([-2.8, radius, 2.6/2]) cube([2.6, 2.6, 2.6], center=true);
    translate([2.8, -radius, 2.6/2]) cube([2.6, 2.6, 2.6], center=true);
    translate([-2.8, -radius, 2.6/2]) cube([2.6, 2.6, 2.6], center=true);
    translate([0, radius+1.8, 2.6/2]) cube([8.2, 1, 2.6], center=true);
    translate([0, -radius-1.8, 2.6/2]) cube([8.2, 1, 2.6], center=true);
    
    // Top cross.
    for (i = [1:8]) {
      translate([0, 0, 17]) rotate([0, 0, 360/8*i])
      cube([56, 2.5, 2], center=true);
    }
//    translate([0, 0, 19]) cube([56, 2.5, 2], center=true);
//    translate([0, 0, 19]) cube([2.5, 56, 2], center=true);    
  }
  union() {
    // Wedges.
    translate([0, 32, 0]) rotate([90]) linear_extrude(height=64)
      polygon([[0, 0], [32, 0], [32, 10]]);
    translate([0, 32, 0]) rotate([90]) linear_extrude(height=64)
      polygon([[0, 0], [-32, 0], [-32, 10]]);
  }
}
//translate([0, 58.1/2, 2]) rotate([90]) cylinder(h=58.1, d=3);
