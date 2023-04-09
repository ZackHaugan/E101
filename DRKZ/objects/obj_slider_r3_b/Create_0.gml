/// @description initialize variables (customization)

colors = [ $001EA6, $008FA6, $51A600, $A62D00 ];
// 1 for red, 2 for yellow, 3 for green, 4 for blue
color_ = 1;
// the minimum value of the slider output
minimum_ = -5;
// the maximum value of the slider output
maximum_ = 5;
// starting value of the slider (make sure it is a possible value)
start_ = 0;
// pretext (text to show before the value)
pretext_ = "b = ";




output_ = start_;
global.varB = output_;
value_ = (start_-minimum_)/(maximum_-minimum_);
text_color_ = colors[ color_ - 1];
max_value_ = 1;
selected_ = false;
image_speed = 0;
image_index = 0;
