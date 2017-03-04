h = 10;   // altura de la tabla
ancho = 35.7; // ancho de la tabla
d = 3.5;  // diametro del agujero
largo = 200; // largo de la tabla
grosor = h/2; // altura de la plantilla 
distancia_cadenas = 140;
delta = 1; // espesor de borde
distancia_recorte = 200;  // recorte para dejar un lado abierto
recorte = 15;  //recorte para dejar un lado abierto

difference(){
	cube([ancho+2*delta,largo+2*delta,grosor+delta], center=true);
	translate([0,distancia_recorte/2,0]) cube([ancho+10,recorte,recorte], center=true);
	translate([0,0,delta]) cube([ancho,largo,grosor], center=true);
	translate([0,distancia_cadenas/2,0]) cylinder(h,d=d,center=true,$fn=50);
	translate([0,-distancia_cadenas/2,0]) cylinder(h,d=d,center=true,$fn=50);
}