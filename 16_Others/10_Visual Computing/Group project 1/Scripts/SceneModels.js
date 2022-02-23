// Based on code provided in class by J. Madeira.

var sceneModels = [];

function emptyModelFeatures() {

    this.vertices = [];
    this.normals = [];
    this.textureCoords = [];

    // Position
    this.tx = 0.0;
    this.ty = 0.0;
    this.tz = 0.0;

    // Rotation angles
    this.rotAngleXX = 0.0;
    this.rotAngleYY = 0.0;
    this.rotAngleZZ = 0.0;

    // Scaling factors
    this.sx = 1.0;
    this.sy = 1.0;
    this.sz = 1.0;

    // Material features
    this.kAmbi = [ 0.0, 0.0, 0.0 ];
    this.kDiff = [ 0.0, 0.0, 0.0 ];
    this.kSpec = [ 0.0, 0.0, 0.0 ];
    this.nPhong = 0;
}

function simpleCubeModel( ) {

    var cube = new emptyModelFeatures();

    cube.vertices = [

        // Front
        -0.5, -0.5,  0.5,
         0.5,  0.5,  0.5,
        -0.5,  0.5,  0.5,
        -0.5, -0.5,  0.5,
         0.5, -0.5,  0.5,
         0.5,  0.5,  0.5,

        // Right
         0.5, -0.5,  0.5,
         0.5, -0.5, -0.5,
         0.5,  0.5, -0.5,
         0.5, -0.5,  0.5,
         0.5,  0.5, -0.5,
         0.5,  0.5,  0.5,

        // Back
        -0.5, -0.5, -0.5,
        -0.5,  0.5, -0.5,
         0.5,  0.5, -0.5,
        -0.5, -0.5, -0.5,
         0.5,  0.5, -0.5,
         0.5, -0.5, -0.5,

        // Left
        -0.5, -0.5, -0.5,
        -0.5, -0.5,  0.5,
        -0.5,  0.5, -0.5,
        -0.5, -0.5,  0.5,
        -0.5,  0.5,  0.5,
        -0.5,  0.5, -0.5,

        // Top
        -0.5,  0.5, -0.5,
        -0.5,  0.5,  0.5,
         0.5,  0.5, -0.5,
        -0.5,  0.5,  0.5,
         0.5,  0.5,  0.5,
         0.5,  0.5, -0.5,

        // Bottom
        -0.5, -0.5,  0.5,
        -0.5, -0.5, -0.5,
         0.5, -0.5, -0.5,
        -0.5, -0.5,  0.5,
         0.5, -0.5, -0.5,
         0.5, -0.5,  0.5
    ];

    cube.textureCoords = [

        // Front
        1, 1,
        0, 0,
        1, 0,
        1, 1,
        0, 1,
        0, 0,

        // Right
        1, 1,
        0, 1,
        0, 0,
        1, 1,
        0, 0,
        1, 0,

        // Back
        0, 0,
        0, 1,
        1, 1,
        0, 0,
        1, 1,
        1, 0,

        // Left
        0, 1,
        1, 1,
        0, 0,
        1, 1,
        1, 0,
        0, 0,

        // Top
        1, 1 ,
        1, 0 ,
        0, 0 ,
        1, 1 ,
        0, 1 ,
        0, 0 ,

        // Bottom
        1, 1,
        0, 0,
        1, 0,
        1, 1,
        0, 1,
        0, 0,
    ];

    computeVertexNormals( cube.vertices, cube.normals );

    return cube;
}

// Floor
sceneModels.push( new simpleCubeModel( 1 ) );
    // Position
    sceneModels[0].tx = 1.5;
    sceneModels[0].ty = -1.5;
    sceneModels[0].tz = -16;
    // Scale
    sceneModels[0].sx = 31;
    sceneModels[0].sz = 33;
    // Material features
    sceneModels[0].kAmbi = [ 0.19, 0.07, 0.02 ];
    sceneModels[0].kDiff = [ 0.7, 0.27, 0.08 ];
    sceneModels[0].kSpec = [ 0.26, 0.14, 0.08 ];
    sceneModels[0].nPhong = 12.8;
    // Texture Coordinates
    sceneModels[0].textureCoords = [

        // Front
        31, 1,
        0 , 0,
        31, 0,
        31, 1,
        0 , 1,
        0 , 0,

        // Right
        1, 33,
        0, 33,
        0, 0,
        1, 33,
        0, 0,
        1, 0,

        // Back
        0 , 0,
        0 , 1,
        31, 1,
        0 , 0,
        31, 1,
        31, 0,

        // Left
        0, 33,
        1, 33,
        0, 0,
        1, 33,
        1, 0,
        0, 0,

        // Top
        31, 33,
        31, 0 ,
        0 , 0 ,
        31, 33,
        0 , 33,
        0 , 0 ,

        // Bottom
        31, 33,
        0 , 0 ,
        31, 0 ,
        31, 33,
        0 , 33,
        0 , 0 ,
    ];

// Walls
sceneModels.push(new simpleCubeModel(1));
    // Position
    sceneModels[1].tx = -13.5;
    sceneModels[1].ty = -0.25;
    sceneModels[1].tz = 1;
    // Scale
    sceneModels[1].sy = 1.5;
    // Material features
    sceneModels[1].kAmbi = [ 0.25, 0.2, 0.07 ];
    sceneModels[1].kDiff = [ 0.75, 0.60, 0.23 ];
    sceneModels[1].kSpec = [ 0.63, 0.56, 0.37 ];
    sceneModels[1].nPhong = 51.2;

// Player
sceneModels.push( new simpleCubeModel( 1 ) );
    // Position
    sceneModels[2].tx = 0;
    sceneModels[2].ty = -0.75;
    sceneModels[2].tz = 0;
    // Scale
    sceneModels[2].sx = 0.25;
    sceneModels[2].sy = 0.25;
    sceneModels[2].sz = 0.25;
    // Material features
    sceneModels[2].kAmbi = [ 0.3, 0, 0 ];
    sceneModels[2].kDiff = [ 0.6, 0, 0 ];
    sceneModels[2].kSpec = [ 0.8, 0.6, 0.6 ];
    sceneModels[2].nPhong = 100;
