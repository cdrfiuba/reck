h = 10;
d = 3;
largo = 200;
ancho = 25;
grosor = 5;
distancia_cadenas = 150/2;
delta = 1;
distancia_recorte = 200/2;
recorte = 30;

difference(){
	cube([ancho+delta,largo+delta,grosor+delta], center=true);
	translate([0,distancia_recorte,0]) cube([recorte,recorte,recorte], center=true);
	translate([0,0,delta]) cube([ancho,largo,grosor], center=true);
	translate([0,distancia_cadenas,0]) cylinder(h,d,d,true);
	translate([0,-distancia_cadenas,0]) cylinder(h,d,d,true);
}