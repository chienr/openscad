$fn=64;

difference() {
  minkowski() {
    translate([2, 2, 0]) cube([20-2*2, 50-2*2, 1]);
    cylinder(h=1, r=2);
  }
//  cube([20, 50, 2], center=false);
  union() {
    Screwholes();
    WihaPicoFinish();
  }
}

module Screwholes() {
  translate([2, 2, 0]) cylinder(h=2, d=2);
  translate([2, 50-2, 0]) cylinder(h=2, d=2);
  translate([20-2, 2, 0]) cylinder(h=2, d=2);
  translate([20-2, 50-2, 0]) cylinder(h=2, d=2);
}

module Snips() {
  translate([4, 10.65, 0]) union() {
    cube([12, 28.7, 2]);
    translate([6, 0, 0]) cylinder(h=2, d=12);
    translate([6, 28.7, 0]) cylinder(h=2, d=12);
  }
}

module Caliper() {
  translate([7, 25, 0]) union() {
    cube([6, 18, 2]);
  }
}

module Scraper() {
  translate([9.7, 6, 0]) union() {
    cube([0.6, 38, 2]);
  }
}

module Klein() {
  translate([10, 25, 0]) union() {
    cylinder(h=2, d=11.3);
  }
}

module Pliers() {
  translate([4.5, 14, 0]) union() {
    cube([11, 22, 2]);
    translate([5.5, 0, 0]) cylinder(h=2, d=11);
    translate([5.5, 22, 0]) cylinder(h=2, d=11);
  }
}

module Scissors() {
  translate([5.75, 10.5, 0]) union() {
    minkowski() {
      translate([2, 2, 0]) cube([9-2*2, 29-2*2, 1]);
      cylinder(h=1, r=2);
    }
  }
}

module ScrewdriverCutter() {
  translate([10, 35, 0]) cylinder(h=2, d=10.1);
  translate([4.25, 12, 0]) cube([11.5, 6, 2]);
}

// Wiha PicoFinish precision screwdrivers.
module WihaPicoFinish() {
  translate([10, 14, 0]) cylinder(h=2, d=11.8);
//  translate([10, 14, 0]) cylinder(h=2, d=10.5);
  translate([10, 36, 0]) cylinder(h=2, d=11.8);
//  translate([10, 36, 0]) cylinder(h=2, d=10.5);
}