$fn=32;

thick=4;
length=56;
height=8;

difference() {
    union() {
        cube([thick,length,thick]);
        cube([thick,thick,height]);
    }
    translate([thick/2,length*1.5+thick,thick*0.9])
        cube([1,length*3,1],center=true);
    translate([thick/2,length+thick,height])
        cube([1,length*3,3],center=true);
}
