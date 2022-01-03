$fn=64;

poles = 24;
radius = 28;
thick = 2.5;
offset = 360/poles/2;

module Ring(height, outer_dia, inner_dia) {
  difference() {
    cylinder(h=height, d=outer_dia);
    cylinder(h=height, d=inner_dia);
  }
}

difference() {
  union() {
    // Colliseum.
    for (i = [1:poles]) {
      translate([sin(360*i/poles+offset)*radius, cos(360*i/poles+offset)*radius, 0])
      cylinder(h=10, d=2.6);
    }
    // Double rings.
    translate([0, 0, 10]) Ring(2, radius*2+thick, radius*2-thick);
    translate([0, 0, 10]) Ring(2, 20+thick, 20-thick);
    // Stoppers.
    translate([3.7, radius, 2.6/2]) cube([2.6, 2.6, 2.6], center=true);
    translate([-3.7, radius, 2.6/2]) cube([2.6, 2.6, 2.6], center=true);
    translate([3.7, -radius, 2.6/2]) cube([2.6, 2.6, 2.6], center=true);
    translate([-3.7, -radius, 2.6/2]) cube([2.6, 2.6, 2.6], center=true);
    translate([0, radius+1.8, 2.6/2]) cube([10, 1, 2.6], center=true);
    translate([0, -radius-1.8, 2.6/2]) cube([10, 1, 2.6], center=true);
    
    // Top cross.
    for (i = [1:16]) {
      rotate([0, 0, 360/16*i]) translate([10, -2.5/2, 10])
      cube([18, 2.5, 2]);
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
