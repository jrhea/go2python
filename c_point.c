#include <stdio.h>
#include "c_point.h"

Point* c_createPoint(float x, float y, float z){
	Point *point = createPoint(1.0,2.0,3.0);
	printf("x: %f y: %f z: %f\n", point->x, point->y, point->z);
	return point;
}

void c_scalePoint(Point* point, float factor){
	scalePoint(point,10);
	printf("x: %f y: %f z: %f\n", point->x, point->y, point->z);
}