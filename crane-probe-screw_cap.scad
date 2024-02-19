$fn=32;

thick=6;
main_size=16;
screw_d=5.4;
screw_head=9.4;
wing_h=6;
wing_l=24;
wing_t=1;

difference() {
    union() {
        cylinder(h=thick,d=main_size,$fn=6);
        translate([0,0,wing_h/2])
            cube([1,wing_l,wing_h],center=true);
    }
    translate([0,0,thick-3])
        cylinder(h=main_size,d=screw_head,$fn=6);
    translate([0,0,-1])
        cylinder(h=main_size,d=screw_d);
}
