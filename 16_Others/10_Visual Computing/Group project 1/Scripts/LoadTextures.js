// Based on code provided in class by J. Madeira.

var webGLTextures = [];

function handleLoadedTexture(texture) {

    gl.bindTexture(gl.TEXTURE_2D, texture);
    gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, true);
    gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, texture.image);
    gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.NEAREST);
    gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.NEAREST);
    gl.bindTexture(gl.TEXTURE_2D, null);
}

function init(file_name){

    const Texture = gl.createTexture();
    Texture.image = new Image();
    Texture.image.onload = function (){handleLoadedTexture(Texture);}
    Texture.image.src = "Textures/"+file_name+".gif";

    return Texture;
}

function initTexture() {

    const fileNames = [ "Watter",
                        "Wood",
                        "Lava",
                        "Brick",
                        "Brick1",
                        "Dirt",
                        "Galvanized Blue",
                        "Grass","Grass1",
                        "Red Sand",
                        "Wood floor",
                        "Yellow Rock"];

    for (const fileName of fileNames){
        webGLTextures.push(init(fileName));
    }

}
