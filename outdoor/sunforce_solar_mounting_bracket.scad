$fn=64;
r=2.5;

difference() {
  union() {
    minkowski() {
      translate([0, 0, 10/2]) cube([126-r*2, 78.6-r*2, 10], center=true);
      cylinder(h=2, r=2.5);
    }
    translate([0, -78.6/2, 12]) linear_extrude(height=6.8)
        polygon([[-103.2/2, 0], [103.2/2, 0], [80/2, 66], [-80/2, 66]]);
    translate([-7.2/2, -31, 18.8]) rotate([90, 0, 90])
        linear_extrude(height=7.2) polygon([[0, 0], [6, 0], [0, 2]]);
    translate([-63.1/2, (66-78.6/2)+4.4/2, 4.4/2+12]) cube([1.1, 4.4, 4.4], center=true);
    translate([63.1/2, (66-78.6/2)+4.4/2, 4.4/2+12]) cube([1.1, 4.4, 4.4], center=true);
  }
  union() {
    // Big hollow
    difference() {
      minkowski() {
        translate([0, 0, 8/2]) cube([122-r*2, 74.6-r*2, 8], center=true);
        cylinder(h=2, r=2.5);
      }
      union() {
        translate([-105.8/2, 4, 0]) cylinder(h=10, d1=8, d2=20);
        translate([105.8/2, 4, 0]) cylinder(h=10, d1=8, d2=20);
        translate([1-50, 37.3, 10]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 10], [10, 0]]);
        translate([1-40, 37.3, 10]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 5], [5, 0]]);
        translate([1-30, 37.3, 10]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 5], [5, 0]]);
        translate([1-20, 37.3, 10]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 5], [5, 0]]);
        translate([1-10, 37.3, 10]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 5], [5, 0]]);
        translate([1, 37.3, 10]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 5], [5, 0]]);
        translate([1+10, 37.3, 10]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 5], [5, 0]]);
        translate([1+20, 37.3, 10]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 5], [5, 0]]);
        translate([1+30, 37.3, 10]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 5], [5, 0]]);
        translate([1+40, 37.3, 10]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 5], [5, 0]]);
        translate([1+50, 37.3, 10]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 10], [10, 0]]);
      }
    }
    translate([-4.8/2, -29.8, 18.8]) rotate([90, 0, 90])
        linear_extrude(height=4.8) polygon([[0, 0], [4.8, 0], [0, 2]]);
    // Diagonal slots
    translate([0, -37.3, 0]) linear_extrude(height=16.8)
        polygon([[-52.3, 0], [-48.3, 0], [-36.7, 65], [-40.7, 65]]);
    translate([0, -37.3, 0]) linear_extrude(height=16.8)
        polygon([[52.3, 0], [48.3, 0], [36.7, 65], [40.7, 65]]);
    
    // Screw holes
    translate([-105.8/2, 4, 0]) cylinder(h=12, d=4.4);
    translate([105.8/2, 4, 0]) cylinder(h=12, d=4.4);
    translate([-105.8/2, 4, 8]) cylinder(h=4, d=9.5);
    translate([105.8/2, 4, 8]) cylinder(h=4, d=9.5);

    // Hollow trapezoid
    difference() {
      translate([0, -74.6/2, 10]) linear_extrude(height=6.8)
          polygon([[-46.3, 0], [46.3, 0], [34.7, 61], [-34.7, 61]]);
      union() {
        translate([-55/2, -78.6/2+1.8+65/2, -3/2+16.8]) cube([5.2, 65, 3], center=true);
        translate([55/2, -78.6/2+1.8+65/2, -3/2+16.8]) cube([5.2, 65, 3], center=true);
        translate([1-24, 23.7, 16.8]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 6.8], [6.8, 0]]);
        translate([1-12, 23.7, 16.8]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 6.8], [6.8, 0]]);
        translate([1, 23.7, 16.8]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 6.8], [6.8, 0]]);
        translate([1+12, 23.7, 16.8]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 6.8], [6.8, 0]]);
        translate([1+24, 23.7, 16.8]) rotate([0, 90, 180])
            linear_extrude(height=2) polygon([[0, 0], [0, 6.8], [6.8, 0]]);
      }
    }
    
    // Tab
    union() {
      translate([-18.3/2, -78.6/2+14, 18.8/2]) cube([1, 28, 18.8], center=true);
      translate([18.3/2, -78.6/2+14, 18.8/2]) cube([1, 28, 18.8], center=true);
      translate([-9, -78.6/2, 7]) rotate([0, 90]) cylinder(h=18, d=1);
      translate([-9, -78.6/2, 8.5]) rotate([0, 90]) cylinder(h=18, d=1);
      translate([-9, -78.6/2, 10]) rotate([0, 90]) cylinder(h=18, d=1);
    }

    // Slots
    union() {
      translate([-55/2, -78.6/2+1.8+65/2, -3/2+18.8]) cube([2.5, 65, 3], center=true);
      translate([55/2, -78.6/2+1.8+65/2, -3/2+18.8]) cube([2.5, 65, 3], center=true);
    }

    // Base riser
    translate([0, 78.6/2, 0]) rotate([90]) linear_extrude(height=78.6)
        polygon([[-50, 0], [50, 0], [40, 5], [-40, 5]]);

  }
}