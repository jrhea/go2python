typedef struct {
	float x;
	float y;
	float z;
} Point;

extern Point* c_createPoint(float, float, float);
extern void c_scalePoint(Point*, float);

// Go functions
extern Point* createPoint(float, float, float);
extern void scalePoint(Point*, float);