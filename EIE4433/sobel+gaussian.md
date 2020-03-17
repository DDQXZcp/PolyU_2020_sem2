# Sobel + Gaussian blur
~~~
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

using namespace cv;

int main()
{
	Mat grad_x, grad_y, dst;
	Mat src = imread("f22.jpg");

	namedWindow("原图");
	resizeWindow("原图", 640, 480);
	imshow("原图", src);
	imwrite("原图.jpg", src);

	//x方向
	Sobel(src, grad_x, CV_8U, 1, 0, 3, 1, 0, BORDER_DEFAULT);

	namedWindow("x方向");
	resizeWindow("x方向", 640, 480);
	imshow("x方向", grad_x);
	imwrite("x方向.jpg", grad_x);

	//y方向
	Sobel(src, grad_y, CV_8U, 0, 1, 3, 1, 0, BORDER_DEFAULT);
	namedWindow("y方向");
	resizeWindow("y方向", 640, 480);
	imwrite("y方向.jpg", grad_y);

	//合并的
	addWeighted(grad_x, 0.5, grad_y, 0.5, 0, dst);
	namedWindow("x+y");
	resizeWindow("x+y", 640, 480);
	imshow("x+y", dst);
	imwrite("x+y.jpg", dst);

	Mat dst_blurred_with_3x3_kernel;
	GaussianBlur(dst, dst_blurred_with_3x3_kernel, Size(3, 3), 0);
	namedWindow("Gblur");
	resizeWindow("Gblur", 640, 480);
	imshow("Gblur", dst_blurred_with_3x3_kernel);
	imwrite("Gblur.jpg", dst_blurred_with_3x3_kernel);

	waitKey(0);
	return 0;
}

~~~

## Result
### source
![image](https://github.com/DDQXZcp/PolyU_2020_sem2/blob/master/EIE4433/原图.jpg)
### x_grad
![image](https://github.com/DDQXZcp/PolyU_2020_sem2/blob/master/EIE4433/x方向.jpg)
### y_grad
![image](https://github.com/DDQXZcp/PolyU_2020_sem2/blob/master/EIE4433/y方向.jpg)
### x+y_grad
![image](https://github.com/DDQXZcp/PolyU_2020_sem2/blob/master/EIE4433/x+y.jpg)
### After Gaussianblur kernal_size = 3
![image](https://github.com/DDQXZcp/PolyU_2020_sem2/blob/master/EIE4433/Gblur.jpg)
