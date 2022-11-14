include <BOSL2/std.scad>


//wire radius, ring radius
module ring(WR,RR,res){
rotate_extrude(angle = 360,convexity = 10,$fn=res)
translate([RR, 0, 0])
circle(WR,$fn=res);
}


//wire radius, ring radius
module D_ring(WR,RR,res){
union(){    
rotate_extrude(angle = 180,convexity = 10,$fn=2*res)
translate([RR, 0, 0])
circle(WR,$fn=res);

translate([RR, 0, 0]) 
rotate([90,0,0])    
cylinder(WR,WR,WR,$fn=res);

translate([-RR, 0, 0])
rotate([90,0,0])
cylinder(WR,WR,WR,$fn=res);    
    
translate([-RR, -WR, 0])
rotate([0,90,0])
cylinder(RR*2,WR,WR,$fn=res);    
  
translate([-RR, -WR, 0])
sphere(WR,$fn=res); 
 
translate([RR, -WR, 0])
sphere(WR,$fn=res); 
}
}    

//polygon of n sides, wire radius, ring radius
module poly_ring(sides,WR,side_length,smooth,res){

RR = ((side_length/2)/sin((360/sides)/2));

path = circle(RR, $fn = sides);

union(){
path_extrude2d(path, closed = true) circle(WR, $fn = res);

if (smooth){
move_copies(path) sphere(r=WR,$fn=res);
}
}
}    