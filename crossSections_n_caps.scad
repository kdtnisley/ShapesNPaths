//Cross Sections and Caps

module cross(cs_width,res){
    cs_r = cs_width/4 + 1; 
    
    difference(){
    square(cs_width,cs_width,center=true);
    
	rotate([0,0,0]){
    translate([cs_width/2,cs_width/2,0]){
    circle(cs_r,$fn=res);
    }
    translate([-cs_width/2,cs_width/2,0]){
    circle(cs_r,$fn=res);
    }
    translate([cs_width/2,-cs_width/2,0]){
    circle(cs_r,$fn=res);
    }
    translate([-cs_width/2,-cs_width/2,0]){
    circle(cs_r,$fn=res);
    }}}
}

//module cross_cap(cs_width,res){
//    cs_r = cs_width/4 + 1; 
//    
//    difference(){           
//    cube([cs_width,cs_width,cs_width],center = true);
//        
//    translate([0,0,-cs_width/2])
//    cube([cs_width*2,cs_width*2,cs_width], center = true);
//    translate([cs_width/2,cs_width/2,0]){
//    cylinder(cs_width*2, r = cs_r, $fn=res,center = true);
//    }
//    translate([-cs_width/2,cs_width/2,0]){
//    cylinder(cs_width*2, r = cs_r,$fn=res,center = true);
//    }
//    translate([cs_width/2,-cs_width/2,0]){
//    cylinder(cs_width*2, r = cs_r,$fn=res,center = true);
//    }
//    translate([-cs_width/2,-cs_width/2,0]){
//    cylinder(cs_width*2, r = cs_r,$fn=res,center = true);       
//    }}
//}


module rounded_cross(cs_width,res){
    cs_r = cs_width/4 + 1; 
    
    difference(){
    circle(cs_width/2,$fn=res);
    
	rotate([0,0,0]){
    translate([cs_width/2,cs_width/2,0]){
    circle(cs_r,$fn=res);
    }
    translate([-cs_width/2,cs_width/2,0]){
    circle(cs_r,$fn=res);
    }
    translate([cs_width/2,-cs_width/2,0]){
    circle(cs_r,$fn=res);
    }
    translate([-cs_width/2,-cs_width/2,0]){
    circle(cs_r,$fn=res);
    }}}
}


module rounded_cross_cap(cs_width,res){
    cs_r = cs_width/4 + 1; 
    
    difference(){           
    sphere(cs_width/2,$fn=res*2,center = true);
        
    translate([0,0,-cs_width/2])
    cube([cs_width*2,cs_width*2,cs_width], center = true);
    translate([cs_width/2,cs_width/2,0]){
    cylinder(cs_width*2, r = cs_r, $fn=res,center = true);
    }
    translate([-cs_width/2,cs_width/2,0]){
    cylinder(cs_width*2, r = cs_r,$fn=res,center = true);
    }
    translate([cs_width/2,-cs_width/2,0]){
    cylinder(cs_width*2, r = cs_r,$fn=res,center = true);
    }
    translate([-cs_width/2,-cs_width/2,0]){
    cylinder(cs_width*2, r = cs_r,$fn=res,center = true);       
    }}
}