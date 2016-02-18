size(400, 400);
background(255);
//nt cout=0;

for (int x = 0; x <= width; x += 10) {
  for (int y = 0; y <= height; y += 10) {
    float dx = 7*(1-2.0*x/width);
    float dy = 7*(1-2.0*y/height);
    line(x, y, x+dx, y+dy);

    /*
    cout++;
     println(cout);
     number of lines == 1681
     */

    /*
    if (dy==0) {
     cout++;
     }
     println(cout);
     number of perfectly flat lines == 41
     */


    /*
    if (dx==0) {
     cout++;
     }
     println(cout);
     number of perfectly flat lines == 41
     */
  }
}
