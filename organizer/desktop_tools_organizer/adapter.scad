use <cube.scad>;

$fn=64;
l=50;
w=20;
h=2;
r=2;

difference() {
  minkowski() {
    translate([0, 0, 0]) ccube(w-2*r, l-2*r, 1);
    cylinder(h=1, r=r);
  }
  union() {
    Screwholes();
    SpudgerBrush();
  }
}

module Screwholes() {
  translate([-w/2+2, -l/2+2, 0]) cylinder(h=h, d=2);
  translate([-w/2+2, l/2-2, 0]) cylinder(h=h, d=2);
  translate([w/2-2, -l/2+2, 0]) cylinder(h=h, d=2);
  translate([w/2-2, l/2-2, 0]) cylinder(h=h, d=2);
}

module Snips() {
  union() {
    ccube(12, 28.7, 2);
    translate([0, -28.7/2, 0]) cylinder(h=2, d=12);
    translate([0, 28.7/2, 0]) cylinder(h=2, d=12);
  }
}

module Caliper() {
  translate([0, 9, 0]) ccube(6, 18, 2);
}

module Scraper() {
  ccube(0.6, 38, 2);
}

module Klein() {
  cylinder(h=2, d=11.3);
}

module Pliers() {
  union() {
    ccube(11, 22, 2);
    translate([0, -22/2, 0]) cylinder(h=2, d=11);
    translate([0, 22/2, 0]) cylinder(h=2, d=11);
  }
}

module Scissors() {
  minkowski() {
    ccube(9-2*2, 29-2*2, 1);
    cylinder(h=1, r=2);
  }
}

// Wiha PicoFinish precision screwdrivers.
module WihaPicoFinish() {
  translate([0, -11, 0]) cylinder(h=2, d=11.8);
//  translate([0, -11, 0]) cylinder(h=2, d=10.5);
  translate([0, 11, 0]) cylinder(h=2, d=11.8);
//  translate([0, 11, 0]) cylinder(h=2, d=10.5);
}

module SpudgerBrush() {
  translate([0, 0, 0]) ccube(11.9, 8.3, 2);
  translate([0, -15, 0]) union() {
    cylinder(h=2, d=5.4);
    ccube(6.5, 1, 2);
  }
}