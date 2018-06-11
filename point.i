 %module point
 %{
 /* Includes the header in the wrapper code */
 #include "c_point.h"
 %}
 
 /* Parse the header file to generate wrappers */
 %include "c_point.h"
