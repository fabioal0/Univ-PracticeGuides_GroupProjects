// Based on code provided in class by J. Madeira.

// Frame count
var actual_frame_time = 0;
var last_frame_time = new Date().getTime();
var milliseconds = 0;
var fps = 0;

// Background increase or decrease blue value
var up_down = true;

function countFrames() {

    fps++;
    actual_frame_time = new Date().getTime();
    milliseconds += (actual_frame_time - last_frame_time);
    last_frame_time = actual_frame_time;

    if (milliseconds % 4 === 0){
        Background_control();
    }

    if(milliseconds >= 1000) {

        document.getElementById('fps').innerHTML = fps + ' fps';
        fps = 0;
        milliseconds = 0;

    }
}

function Background_control() {

    if (up_down){
        background_color[2]-=0.02;
        background_color[0]+=0.0025;

        var r = lightSources[0].getIntensity();
        lightSources[0].setIntensity( r[0]-0.012, r[1]-0.012, 0 );

    }
    else {
        background_color[2]+=0.02;
        background_color[0]-=0.0025;

        var r = lightSources[0].getIntensity();
        lightSources[0].setIntensity( r[0]+0.012, r[1]+0.012, 0 );
    }
    if (background_color[2]<=0.25){
        up_down=false;
    }
    else if(background_color[2]>=0.8){
        up_down=true;
    }

    gl.clearColor(background_color[0],background_color[1],background_color[2],background_color[3]);

}