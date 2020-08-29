int sx = 400;
int sy = 225;
int sz = 10;
int xs = 2;
int ys = 2;
int zs = 2;
int rx = 0;
int ry = 0;
int rz = 0;

void setup() {
  size(800, 450, P3D);
  noStroke();
}
void draw() {
  background(0);
  lights();
  sx += xs;
  sy += ys;
  sz += zs;
  rx += 1;
  ry += 1;
  rz += 1;
  if (rx >= 360) {
    rx = 0;
  }
  if (ry >= 360) {
    ry = 0;
  }
  if (rz >= 360) {
    rz = 0;
  }
  if (sx >= 700) {xs = -2;}
  if (sy >= 350) {ys = -2;}
  if (sz >= 500) {zs = -2;}
  if (sx <= 100) {xs = 2;}
  if (sy <= 100) {ys = 2;}
  if (sz <= 10) {zs = 2;}
  translate(sx, sy, sz);
  rotateX(radians(rx));
  rotateY(radians(ry));
  rotateZ(radians(rz));
  box(80);
}

