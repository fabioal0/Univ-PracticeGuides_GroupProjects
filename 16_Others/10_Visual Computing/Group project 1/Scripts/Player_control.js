var currentlyPressedKeys = {};

function handleKeys() {

    var tmp_tx = globalTx;
    var tmp_tz = globalTz;
    var tmp_pos_x = 0;
    var tmp_pos_z = 0;

    // Rotate player to the left -> Left cursor key
    if (currentlyPressedKeys[37]){
        globalAngleYY -= 4;
    }

    // Rotate player to the right -> Right cursor key
    if (currentlyPressedKeys[39]){
        globalAngleYY += 4;
    }

    // Move Forwards -> Up cursor key
    if (currentlyPressedKeys[38]){

        tmp_tx = globalTx + 0.1 * Math.cos(radians(globalAngleYY+90));
        tmp_tz = globalTz + 0.1 * Math.sin(radians(globalAngleYY+90));

        if (tmp_tx > -16.875 && tmp_tx < 13.875 && tmp_tz > -0.375 && tmp_tz < 32.375 ){

            if (Math.floor(tmp_tx + 17 )!== Math.floor(tmp_tx + 17 + 0.125 )){
                tmp_pos_x = Math.floor(tmp_tx + 17 + 0.125 );
            }
            else if(Math.floor(tmp_tx + 17 )!== Math.floor(tmp_tx + 17 - 0.125 )){
                tmp_pos_x = Math.floor(tmp_tx + 17 - 0.125 );
            }
            else{
                tmp_pos_x = Math.floor(tmp_tx + 17 );
            }

            if(Math.floor(tmp_tz - 0.5 )!== Math.floor(tmp_tz -0.5 + 0.125 )){
                tmp_pos_z = Math.floor(tmp_tz - 0.5 + 0.125);
            }
            else if( tmp_tz > 0.625 && Math.floor(tmp_tz -0.5 )!== Math.floor(tmp_tz -0.5 - 0.125 )){
                tmp_pos_z = Math.floor(tmp_tz -0.5 - 0.125 );
            }
            else{
                tmp_pos_z = Math.floor(tmp_tz -0.5 );
            }

            if (!(tmp_tz > 0.375 && tmp_tz < 31.625 && mapa[tmp_pos_z][30 - tmp_pos_x] !== 0)) {
                globalTz = tmp_tz;
                globalTx = tmp_tx;
            }
        }
    }

    // Move Backwards  -> Down cursor key
    if (currentlyPressedKeys[40]){

        tmp_tx = globalTx + 0.1 * Math.cos(radians(globalAngleYY-90));
        tmp_tz = globalTz + 0.1 * Math.sin(radians(globalAngleYY-90));

        if (tmp_tx > -16.875 && tmp_tx < 13.875 && tmp_tz > -0.375 && tmp_tz < 32.375 ){

            if (Math.floor(tmp_tx + 17 )!== Math.floor(tmp_tx + 17 + 0.125 )){
                tmp_pos_x = Math.floor(tmp_tx + 17 + 0.125 );
            }
            else if(Math.floor(tmp_tx + 17 )!== Math.floor(tmp_tx + 17 - 0.125 )){
                tmp_pos_x = Math.floor(tmp_tx + 17 - 0.125 );
            }
            else{
                tmp_pos_x = Math.floor(tmp_tx + 17 );
            }


            if(Math.floor(tmp_tz - 0.5 )!== Math.floor(tmp_tz -0.5 + 0.125 )){
                tmp_pos_z = Math.floor(tmp_tz - 0.5 + 0.125);
            }
            else if(tmp_tz > 0.625 && Math.floor(tmp_tz -0.5 )!== Math.floor(tmp_tz -0.5 - 0.125 )){
                tmp_pos_z = Math.floor(tmp_tz -0.5 - 0.125 );
            }
            else{
                tmp_pos_z = Math.floor(tmp_tz -0.5 );
            }

            if (!(tmp_tz > 0.375 && tmp_tz < 31.625 && mapa[tmp_pos_z][30 - tmp_pos_x] !== 0)) {
                globalTz = tmp_tz;
                globalTx = tmp_tx;
            }
        }
    }

    // Change Floor Texture  -> '1' key
    if (currentlyPressedKeys[49]) {

        floor_texture+=1;

        while(floor_texture===wall_texture || floor_texture===player_texture)
            floor_texture+=1;

        if (floor_texture === webGLTextures.length)
            floor_texture=0;

    }

    // Change Wall Texture  -> '2' key
    if (currentlyPressedKeys[50]) {

        wall_texture+=1;

        while(wall_texture===floor_texture || wall_texture===player_texture)
            wall_texture+=1;

        if (wall_texture === webGLTextures.length)
            wall_texture=0;
    }

    // Change Player Texture  -> '3' key
    if (currentlyPressedKeys[51]) {

        player_texture+=1;

        while(player_texture===wall_texture || player_texture===floor_texture)
            player_texture+=1;

        if (player_texture === webGLTextures.length)
            player_texture=0;

    }
}

// Handling events
function setEventListeners(canvas) {

    //Handling keyboard
    function handleKeyDown(event) {
        currentlyPressedKeys[event.keyCode] = true;
    }

    function handleKeyUp(event) {
        currentlyPressedKeys[event.keyCode] = false;
    }

    document.onkeydown = handleKeyDown;
    document.onkeyup = handleKeyUp;

}
