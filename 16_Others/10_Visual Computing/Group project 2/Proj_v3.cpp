
#include <iostream>
#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <opencv2/imgproc/imgproc.hpp>

using namespace std;
using namespace cv;

Mat Generate_Mask(Mat &frame1, Mat &frame2){

    Mat element = getStructuringElement(MORPH_ELLIPSE, Size(31, 31));
    Mat tmp;

    absdiff(frame1, frame2, tmp);
    medianBlur(tmp, tmp, 11);
    blur(tmp,tmp,Size(31,31));
    morphologyEx(tmp, tmp, MORPH_DILATE, element);
    threshold(tmp, tmp, 11, 255, THRESH_BINARY_INV);

    return tmp;
}

void Background_Reconstruction(Mat &actual_frame, Mat &first_frame, Mat &old_frame, Mat &background,Mat &white_frame){

    Mat first_frame_tmp;
    Mat actual_frame_tmp;
    Mat old_frame_tmp;
    Mat mask1;
    Mat mask2;
    Mat mask3;

    Mat tmp;

    cvtColor(first_frame, first_frame_tmp, COLOR_BGR2GRAY);
    cvtColor(actual_frame, actual_frame_tmp, COLOR_BGR2GRAY);
    cvtColor(old_frame, old_frame_tmp, COLOR_BGR2GRAY);

    mask1 = Generate_Mask(first_frame_tmp, actual_frame_tmp);
    mask2 = Generate_Mask(first_frame_tmp, old_frame_tmp);
    mask3 = Generate_Mask(actual_frame_tmp, old_frame_tmp);

    bitwise_and(actual_frame, white_frame, background, mask1);
    bitwise_and(old_frame, white_frame, background, mask2);
    bitwise_and(actual_frame, white_frame, background, mask3);

}

Mat Movement_Detection(Mat &background,Mat &actual_frame, Mat &white_frame){

    Mat mask;
    Mat final_frame;

    absdiff(background, actual_frame, mask);
    cvtColor(mask, mask, COLOR_BGR2GRAY);
    medianBlur(mask, mask, 11);
    bitwise_and(actual_frame, white_frame, final_frame, mask);

    return final_frame;
}

int main()
{

    VideoCapture video_input;
    VideoWriter video_output;
    Size video_size;

    Mat white_frame;
    Mat actual_frame;
    Mat first_frame;
    Mat old_frame;
    Mat tmp_frame;
    Mat background;
    Mat final_frame;
    int count = 0;


    video_input = VideoCapture(0);
    video_size = Size( int(video_input.get(3)), int(video_input.get(4)) );
    video_output = VideoWriter( "Result.avi", CV_FOURCC('M','J','P','G'), 60, video_size );


    if (!video_input.isOpened())
    {
        cout << "Error opening video capture" << endl;
        return -1;
    }

    while (1){

        video_input >> actual_frame;

        imshow( "Actual_frame", actual_frame );

        if (actual_frame.empty()){
            break;
        }

        if (first_frame.empty()) {
            first_frame = actual_frame.clone();
            background = actual_frame.clone();
            white_frame = Mat(actual_frame.size(), CV_8UC3,Scalar(255,255,255));

        }

        if (count % 30 == 0)
            tmp_frame = actual_frame.clone();

        if (count % 61 == 0)
            old_frame = tmp_frame.clone();

        imshow( "Old_frame", old_frame );

        Background_Reconstruction(actual_frame, first_frame, old_frame, background, white_frame);

        imshow( "Background", background );

        final_frame = Movement_Detection(background,actual_frame,white_frame);
        count++;

        imshow( "Result", final_frame );

        video_output.write(final_frame);

        if( (char)waitKey(1) == 27 )
            break;

    }

    video_input.release();
    video_output.release();
    destroyAllWindows();

    return 0;
}