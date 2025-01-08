// Gmsh project created on Mon Aug 26 19:33:14 2024
//+
SetFactory("OpenCASCADE");
lc = 0.2;
//+
lcc=0.8;
//+
Point(1) = {1,1,0,lc};
//+
Point(2) = {1,-1,0,lc};
//+
Point(3) = {5,1,0,lc};
//+
Point(4) = {5,-1,0,lc};
//+
Point(5) = {0,0,0,lc};
//+
Line(1) = {1, 3};
//+
Line(3) = {4, 2};
//+
Point(6) = {1,0,0};
//+
Circle(4) = {1, 6, 5};
//+
Circle(5) = {5, 6, 2};
//+
Point(7) = {5, 10, 0, lcc};
//+
Point(8) = {5, -10, 0, lcc};
//+
Point(9) = {-10, 10, 0, lcc};
//+
Point(10) = {-10, -10, 0, lcc};
//+
Line(6) = {9, 10};
//+
Line(7) = {10, 8};
//+
Line(9) = {7, 9};
//+
Line(10) = {7, 3};
//+
Line(11) = {4, 8};
//+
Curve Loop(13) = {6, 7, -11, 3, -5, -4, 1, -10, 9};
//+
Plane Surface(1) = {13};
//+
//Point(11) = {-5,-5, 0, 0.05};
//+
//Point{11} In Surface{1};
//+
Physical Surface("front", 30) = {2};
//+
Physical Surface("bottom", 31) = {3};
//+
Physical Surface("top", 32) = {10};
//+
Physical Surface("back", 33) = {9};
//+
Physical Surface("back", 33) += {4};
//+
Physical Surface("wall", 34) = {5};
//+
Physical Surface("wall", 34) += {6};
//+
Physical Surface("wall", 34) += {7};
//+
Physical Surface("wall", 34) += {8};
//+
Physical Surface("right", 35) = {1};
//+
Physical Surface("left", 36) = {11};
//+
Physical Volume("internal", 37) = {1};
//+
Extrude {0, 0, 1} {
  Surface{1}; 
  Layers{1};
  Recombine;
}