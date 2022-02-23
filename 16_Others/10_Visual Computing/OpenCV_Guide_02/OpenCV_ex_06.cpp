/*
 * OpenCV_ex_01.cpp
 *
 * Simple example - Opening and displaying an image
 *
 * J. Madeira - Nov 2012 + Nov 2017
 */


// Visual Studio ONLY - Allowing for pre-compiled header files

// This has to be the first #include

// Remove it, if you are not using Windows and Visual Studio


// The remaining #includes

#include <iostream>

// Basic OpenCV functionalities

#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

using namespace cv;
using namespace std;

// If you want to "simplify" code writing, you might want to use:

// using namespace cv;

// using namespace std;


int main( void )
{
    // To store an image

	cv::Mat image;

	// Read an image from file

	// Note the flag : IMREAD_UNCHANGED

	// Question : which other flags can be used ?

	image = cv::imread( "lena.jpg", cv::IMREAD_UNCHANGED );

	if( image.empty() )
	{
	    // NOT SUCCESSFUL : the data attribute is empty

	    std::cout << "Image file could not be open !!" << std::endl;

	    return -1;
	}

    int width = image.size().width;
    int height = image.size().height;

    for (int i=1;i<=20;i++){
        line( image, cv::Point(0,i*int(height/20)), cv::Point(width,i*int(height/20)), cv::Scalar(255,255,255),1,1);
    }

    for (int j=1;j<=20;j++) {
        line(image, cv::Point(j*int(width/20), 0), cv::Point(j*int(width/20), height), cv::Scalar(255, 255, 255), 1, 1);
    }

    // Create a window to display the image
	
    // WINDOW_AUTOSIZE : image size determines window size

	// Question : can the window be resized by the user ?

	// Question : which other flags can be used ?

	cv::namedWindow( "Display window", cv::WINDOW_AUTOSIZE );

    // Display the image

    cv::imshow( "Display window", image );

    // Wait for a pressed key

    cv::waitKey( 0 );

	// Destroy the window --- Actually not needed in such a simple program

	cv::destroyWindow( "Display window" );

	return 0;
}
