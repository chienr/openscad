//translate([-923.6, 0, 0]) import("/Users/chienr/Downloads/Test_-_TS80p_Large_5.stl");

$fn=64;
// Corner radius
r=2;
u=98/3;  // unit ~32.67
// Height
//h=44/2;   // battery silos
// Wall thickness
t=2;

ux=u*4;
uy=u*4;
//ux=185.8;
//uy=33;
h=u*4;

difference() {
  union() {
    minkowski() {
      translate([0, 0, (h-2)/2]) cube([ux-r*2, uy-r*2, h-2], center=true);
      cylinder(h=2, r=r);
    }
  }
  union() {
    // AddHollowBox();
    AddSlots(6);
    AddFingerHole();
    AddScrewHoles();
    // AddSideOpening();
    // AddAABatterySilos();
    // AddAAABatterySilos();
  }
}

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

module AddScrewHoles() {
  offset=48;
  AddScrewHole(-offset, offset, 0);
  AddScrewHole(offset, offset, 0);
  AddScrewHole(offset, offset, -90);
  AddScrewHole(offset, -offset, -90);
}

module AddScrewHole(x, y, orientation=0) {
  translate([x, y, 0]) rotate([0, 0, orientation]) union() {
    translate([0, 10, 0]) cylinder(h=t, d=4);
    translate([0, 10/2, t/2]) cube([4, 10, t], center=true);
    translate([0, 0, 0]) cylinder(h=t, d=8);
    translate([0, 0, 4/2+t]) cube([8, 18, 4], center=true);
  }
}

module AddDivider() {
  height=h*0.8;
  translate([0, 0, height/2]) cube([t, uy, height], center=true);
}

module AddSlots(num) {
  height=h;
  width=(uy-t*(num+1))/num;
  step = width+t;
  for (y = [-uy/2+width/2+t : step : uy/2-width/2-t]) {
    translate([0, y, height/2+t/2]) cube([ux-t*2, width, height-t], center=true);
  }
}

module AddFingerHole() {
  translate([0, -uy/2, h]) rotate([-90]) cylinder(h=uy, d=50);
}

module AddSideOpening() {
  d=25;
  for (y = [uy/2-t/2, -uy/2+t/2]) {
    translate([0, y, h/2]) union() {
      translate([0, 0, h/2]) cube([d, t, h], center=true);
      translate([0, t/2, 0]) rotate([90, 0, 0]) cylinder(h=t, d=d);
    }
  }
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

