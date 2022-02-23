// Based on code provided in class by J. Madeira.

var lightSources = [];

function LightSource( ) {

	this.isOn = true;
	this.position = [ 0.0, 0.0, 0.0, 0.0 ];
	this.intensity = [ 0.0, 0.0, 0.0 ];
	this.ambientIntensity = [ 0.0, 0.0, 0.0 ];

	this.rotAngleXX = 0.0;
	this.rotAngleYY = 0.0;
	this.rotAngleZZ = 0.0;	

}

LightSource.prototype.getPosition = function() {
	return this.position;
}

LightSource.prototype.setPosition = function( x, y, z, w ) {
	
	this.position[0] = x;
	this.position[1] = y;
	this.position[2] = z;
	this.position[3] = w;
}

LightSource.prototype.getIntensity = function() {
	return this.intensity;
}

LightSource.prototype.setIntensity = function( r, g, b ) {
	
	this.intensity[0] = r;
	this.intensity[1] = g;
	this.intensity[2] = b;
}

LightSource.prototype.setAmbIntensity = function( r, g, b ) {

	this.ambientIntensity[0] = r;
	this.ambientIntensity[1] = g;
	this.ambientIntensity[2] = b;
}

LightSource.prototype.getRotAngleYY = function() {
	return this.rotAngleYY;
}

LightSource.prototype.setRotAngleYY = function( angle ) {
	this.rotAngleYY = angle;
}

// Light source "Sun Light"
lightSources.push( new LightSource() );
    lightSources[0].setPosition( 0, 50, -15, 1.0 );
    lightSources[0].setIntensity( 1, 1, 0 );
    lightSources[0].setAmbIntensity( 0.3, 0.3, 0.0 );

// Light source "Cube"
lightSources.push( new LightSource() );
    lightSources[1].setPosition( 0.0, -0.75, -0.126, 1.0 );
    lightSources[1].setIntensity( 0.5, 0.5, 0.5 );
    lightSources[1].setAmbIntensity( 0.5, 0.5, 0.5 );




