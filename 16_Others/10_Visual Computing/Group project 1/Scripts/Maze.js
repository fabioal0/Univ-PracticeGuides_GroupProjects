// Based on code provided in class by J. Madeira.

// Global Variables

var gl = null;
var shaderProgram = null;
var primitiveType = null;

// Buffers
var triangleVertexPositionBuffer = null;
var triangleVertexNormalBuffer = null;
var triangleVertexTextureCoordBuffer = null;

// Global Rotation
var globalAngleYY = 0.0;
var globalAngleXX = 0.0;

// Global Translation
var globalTx = 0.0;
var globalTy = 0.0;
var globalTz = 0.0;

// Textures
var wall_texture = 0 ;
var floor_texture = 1;
var player_texture = 2;

// Background color
var background_color =[0.5, 0.5, 1, 1];

// Viewer position
var pos_Viewer = [ 0.0, 0.0, -1.0, 1.0 ];

// Handling Vectors
function initBuffers(model) {

    // Vertex Coordinates
    triangleVertexPositionBuffer = gl.createBuffer();
    gl.bindBuffer(gl.ARRAY_BUFFER, triangleVertexPositionBuffer);
    gl.bufferData(gl.ARRAY_BUFFER, new Float32Array(model.vertices), gl.STATIC_DRAW);
    triangleVertexPositionBuffer.itemSize = 3;
    triangleVertexPositionBuffer.numItems =  model.vertices.length / 3;

    // Associating to the vertex shader
    gl.vertexAttribPointer(shaderProgram.vertexPositionAttribute,
        triangleVertexPositionBuffer.itemSize,
        gl.FLOAT, false, 0, 0);

    // Vertex Normal Vectors
    triangleVertexNormalBuffer = gl.createBuffer();
    gl.bindBuffer(gl.ARRAY_BUFFER, triangleVertexNormalBuffer);
    gl.bufferData(gl.ARRAY_BUFFER, new Float32Array( model.normals), gl.STATIC_DRAW);
    triangleVertexNormalBuffer.itemSize = 3;
    triangleVertexNormalBuffer.numItems = model.normals.length / 3;

    // Associating to the vertex shader
    gl.vertexAttribPointer(shaderProgram.vertexNormalAttribute,
        triangleVertexNormalBuffer.itemSize,
        gl.FLOAT, false, 0, 0);

    // Texture Coordinates
    triangleVertexTextureCoordBuffer = gl.createBuffer();
    gl.bindBuffer(gl.ARRAY_BUFFER, triangleVertexTextureCoordBuffer);
    gl.bufferData(gl.ARRAY_BUFFER, new Float32Array(model.textureCoords), gl.STATIC_DRAW);
    triangleVertexTextureCoordBuffer.itemSize = 2;
    triangleVertexTextureCoordBuffer.numItems = model.textureCoords.length/2;

    // Associating to the vertex shader
    gl.vertexAttribPointer(shaderProgram.textureCoordAttribute,
        triangleVertexTextureCoordBuffer.itemSize,
        gl.FLOAT, false, 0, 0);

}

//  Drawing the model
function drawModel( model, mvMatrix, primitiveType ) {

    // Apply model data to the matrix
    mvMatrix = mult( mvMatrix, translationMatrix( model.tx, model.ty, model.tz ) );
    mvMatrix = mult( mvMatrix, rotationZZMatrix( model.rotAngleZZ ) );
    mvMatrix = mult( mvMatrix, rotationYYMatrix( model.rotAngleYY ) );
    mvMatrix = mult( mvMatrix, rotationXXMatrix( model.rotAngleXX ) );
    mvMatrix = mult( mvMatrix, scalingMatrix( model.sx, model.sy, model.sz ) );

    // Passing the Model View Matrix to apply the current transformation
    var mvUniform = gl.getUniformLocation(shaderProgram, "uMVMatrix");
    gl.uniformMatrix4fv(mvUniform, false, new Float32Array(flatten(mvMatrix)));

    // Material properties
    gl.uniform3fv( gl.getUniformLocation(shaderProgram, "k_ambient"), flatten(model.kAmbi) );
    gl.uniform3fv( gl.getUniformLocation(shaderProgram, "k_diffuse"), flatten(model.kDiff) );
    gl.uniform3fv( gl.getUniformLocation(shaderProgram, "k_specular"), flatten(model.kSpec) );
    gl.uniform1f( gl.getUniformLocation(shaderProgram, "shininess"), model.nPhong );

    // Light Sources
    var numLights = lightSources.length;
    gl.uniform1i( gl.getUniformLocation(shaderProgram, "numLights"), numLights );

    //Light Sources
    for(var i = 0; i < lightSources.length; i++ )
    {
        gl.uniform1i( gl.getUniformLocation(shaderProgram, "allLights[" + String(i) + "].isOn"),
            lightSources[i].isOn );
        gl.uniform4fv( gl.getUniformLocation(shaderProgram, "allLights[" + String(i) + "].position"),
            flatten(lightSources[i].getPosition()) );
        gl.uniform3fv( gl.getUniformLocation(shaderProgram, "allLights[" + String(i) + "].intensities"),
            flatten(lightSources[i].getIntensity()) );
    }

    //Initiate buffers
    initBuffers(model);

    //Draw
    gl.drawArrays(primitiveType, 0, triangleVertexPositionBuffer.numItems);
}

// Drawing the scene
function drawScene() {

    var Perspective_Matrix;
    var lightSourceMatrix = mat4();
    var mvMatrix = mat4();

    // Clearing the frame-buffer and the depth-buffer
    gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);

    // Computing the Projection Matrix
    Perspective_Matrix = perspective( 45, 1, 1.75, 18 );
    // Translate Projection matrix
    Perspective_Matrix = mult( Perspective_Matrix,translationMatrix( 0, 0, -2 ));
    // Passing the Projection Matrix to apply the current projection
    var pUniform = gl.getUniformLocation(shaderProgram, "uPMatrix");
    gl.uniformMatrix4fv(pUniform, false, new Float32Array(flatten(Perspective_Matrix)));

    // Passing the viewer position to the vertex shader
    gl.uniform4fv( gl.getUniformLocation(shaderProgram, "viewerPosition"), flatten(pos_Viewer) );

    // Associate textures
    for ( var i=0; i < webGLTextures.length; i++){
        gl.activeTexture(gl.TEXTURE0+i);
        gl.bindTexture(gl.TEXTURE_2D, webGLTextures[i]);
    }

    // Light sources
    for(var i = 0; i < lightSources.length; i++ ){

        // Apply transformations to light source
        lightSourceMatrix = mult(lightSourceMatrix, rotationYYMatrix( lightSources[i].getRotAngleYY() ) );
        // Passing the Light Source Matrix to apply
        var lsmUniform = gl.getUniformLocation(shaderProgram, "allLights["+ String(i) + "].lightSourceMatrix");
        gl.uniformMatrix4fv(lsmUniform, false, new Float32Array(flatten(lightSourceMatrix)));
    }

    // Player Static
    // Apply texture
    gl.uniform1i(shaderProgram.samplerUniform, player_texture);
    // Draw model
    drawModel( sceneModels[2], mvMatrix, primitiveType );

    // Apply global transformations
    mvMatrix = rotationYYMatrix( globalAngleYY );
    mvMatrix = mult( mvMatrix,translationMatrix( globalTx, globalTy, globalTz ));

    //Floor
    // Apply texture
    gl.uniform1i(shaderProgram.samplerUniform, floor_texture);
    // Draw model
    drawModel( sceneModels[0], mvMatrix, primitiveType );

    //Walls
    // Apply texture
    gl.uniform1i(shaderProgram.samplerUniform, wall_texture);
    // Draw walls
    for (var i = 0; i < mapa.length; i++) {
        for (var k = 0; k < mapa[0].length; k++) {

            if (mapa[i][k] === 1) {
                //Position
                sceneModels[1].tx = -13.5 + k;
                sceneModels[1].ty = -0.25;
                sceneModels[1].tz = -1 - i ;

                drawModel( sceneModels[1], mvMatrix, primitiveType );
            }
        }
    }
    // Get frame rate
    countFrames();
}

// Timer
function tick() {

    requestAnimFrame(tick);

    drawScene();
    handleKeys();
}

// WebGL Initialization
function initWebGL( canvas ) {
    try {

        // Create the WebGL context
        gl = canvas.getContext("webgl") || canvas.getContext("experimental-webgl");

        //Set base color
        gl.clearColor(0.5, 0.5, 1, 1);

        // Drawing the triangles defining the model
        primitiveType = gl.TRIANGLES;

        // Enable FACE CULLING
        gl.enable( gl.CULL_FACE );

        // Enable DEPTH-TEST
        gl.enable( gl.DEPTH_TEST );

    } catch (e) {
    }
    if (!gl) {
        alert("WebGL not initialized");
    }
}

//
function runWebGL() {

    var canvas = document.getElementById("my-canvas");

    initWebGL( canvas );
    shaderProgram = initShaders(gl);
    setEventListeners(canvas);
    initTexture();
    tick();

}


