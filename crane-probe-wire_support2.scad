$fn=32;

thick=4;
channel=2;
length=60;
height=8;
support=20;

difference() {
    union() {
        cube([thick,length,thick]);
        translate([-thick,-16,0])
            cube([thick,support,thick]);
    }
    translate([channel/2,-1,channel/2])
        cube([channel,length+2,thick]);
}
