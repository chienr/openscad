$fn=128;
r=2;
u=165/2;
t=2;

ux=u*1;
uy=u*2;
h=10;

difference() {
  union() {
    minkowski() {
      translate([0, 0, (h*2-2)/2]) cube([ux-r*2, uy-r*2, h*2-2], center=true);
      cylinder(h=2, r=r);
    }
  }
  union() {
    difference() {
      AddHollowBox();
      AddHexShankHolder();
    }
  }
}

module AddHollowBox(){
  minkowski() {
    translate([0, 0, (h-2)/2+t]) cube([ux-t*2-r*2, uy-t*2-r*2, h-2], center=true);
    cylinder(h=2, r=r);      
  }
  translate([0, 0, h/2+h]) cube([ux*1.01, uy*1.01, h*1.01], center=true);
}

module AddHexShankHolder() {
  difference() {
    union() {
      translate([0, 0, 13/2+2]) cube([11, 20, 13], center=true);
    }
    union() {
      translate([0, -1, 13/2+2]) cube([11, 12, 13], center=true);
      translate([0, 3, 13/2+2]) cube([7.2, 17, 13], center=true);
      translate([-3.4, -7, 2]) rotate([90, 0, 0]) linear_extrude(height=3) polygon([[0, 13], [6.8, 13], [6.6, 0], [0.2, 0]]);
    }
  }
}
