$fn=128;
r=2;
u=165/2;
t=2;

ux=101.6;  // 4.0 in
uy=165.1;  // 6.5 in
h=12.7;    // 0.5 in

difference() {
  union() {
    minkowski() {
      translate([0, 0, (h-2)/2]) cube([ux-r*2, uy-r*2, h-2], center=true);
      cylinder(h=2, r=r);
    }
  }
  union() {
    difference() {
      AddHollowBox();
      translate([-40, -63, 2]) AddHexShankHolder();
      translate([-30, -63, 2]) AddHexShankHolder();
      translate([-20, -63, 2]) AddHexShankHolder();
      translate([-10, -63, 2]) AddHexShankHolder();
      translate([0, -63, 2]) AddHexShankHolder();
      translate([10, -63, 2]) AddHexShankHolder();
      translate([20, -63, 2]) AddHexShankHolder();
      translate([30, -63, 2]) AddHexShankHolder();
      translate([40, -63, 2]) AddHexShankHolder();

      translate([-40, 63, 2]) rotate([0, 0, 180]) AddHexShankHolder();
      translate([-30, 63, 2]) rotate([0, 0, 180]) AddHexShankHolder();
      translate([-20, 63, 2]) rotate([0, 0, 180]) AddHexShankHolder();
      translate([-10, 63, 2]) rotate([0, 0, 180]) AddHexShankHolder();
      translate([0, 63, 2])   rotate([0, 0, 180]) AddHexShankHolder();
      translate([10, 63, 2])  rotate([0, 0, 180]) AddHexShankHolder();
      translate([20, 63, 2])  rotate([0, 0, 180]) AddHexShankHolder();
      translate([30, 63, 2])  rotate([0, 0, 180]) AddHexShankHolder();
      translate([40, 63, 2])  rotate([0, 0, 180]) AddHexShankHolder();
    }
  }
}

//translate([0, 0, 1]) cube([30, 15, 2], center=true);
//color([1, 0, 0]) translate([0, 0, 6]) rotate([90, 30, 0]) cylinder(h=63, d=7.0, $fn=6);
//color([1, 0, 0]) translate([-10, 0, 6]) rotate([90, 30, 0]) cylinder(h=63, d=7.0, $fn=6);
//color([1, 0, 0]) translate([40, 65, 6]) rotate([90, 30, 0]) cylinder(h=128, d=7.0, $fn=6);
//color([1, 0, 0]) translate([40, 65, 6]) rotate([90, 30, 0]) cylinder(h=102.8, d=12.8);

module AddHollowBox(){
  minkowski() {
    translate([0, 0, (h-2)/2+t]) cube([ux-t*2-r*2, uy-t*2-r*2, h-2], center=true);
    cylinder(h=2, r=r);      
  }
  translate([0, 0, h/2+h]) cube([ux*1.01, uy*1.01, h*1.01], center=true);
}

module AddHexShankHolder() {
  translate([-3.9, 1.9, 0]) GripperArm();
  translate([3.9, 1.9, 0]) GripperArm();
  translate([-3.75, 17.4, 0]) GuidingArm();
  translate([3.75, 17.4, 0]) GuidingArm();
}

module AddHexBitHolder(height=6, diameter=7.4) {
  rotate([0, 0, 30]) difference() {
    cylinder(h=height, d=diameter+2, $fn=6);
    cylinder(h=height, d=diameter, $fn=6);
  }
}

module GuidingArm() {
  w1=1.3;
  w2=1.2;
  h=6;
  l1=5.2;
  l2=2;
  difference() {
    union() {
      translate([0, l1/2, 0]) rotate([90, 0, 0]) linear_extrude(height=l1) union() {
        translate([0, h, 0]) circle(d=w2);
        polygon([[-w1/2, 0], [-w2/2, h], [w2/2, h], [w1/2, 0]]);
      }
      translate([0, 0, 1.5]) cube([6, 1.8, 3], center=true);
    }
    union() {
      translate([-3.65, 0, 3]) rotate([90, 0, 0]) translate([0, 0, -l2/2]) cylinder(h=l2, r=3);
      translate([3.65, 0, 3]) rotate([90, 0, 0]) translate([0, 0, -l2/2]) cylinder(h=l2, r=3);
    }
  }
}

module GripperArm() {
  w1=1.6;
  w2=1.5;
  h=6;
  l1=3.8;
  l2=2;
  difference() {
    union() {
      translate([0, l1/2, 0]) rotate([90, 0, 0]) linear_extrude(height=l1) union() {
        translate([0, h, 0]) circle(d=w2);
        polygon([[-w1/2, 0], [-w2/2, h], [w2/2, h], [w1/2, 0]]);
      }
      translate([0, 0, 1.5]) cube([6, 1.8, 3], center=true);
    }
    union() {
      translate([-3.8, 0, 3]) rotate([90, 0, 0]) translate([0, 0, -l2/2]) cylinder(h=l2, r=3);
      translate([3.8, 0, 3]) rotate([90, 0, 0]) translate([0, 0, -l2/2]) cylinder(h=l2, r=3);
    }
  }
}