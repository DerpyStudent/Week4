float[] values;
int index;
int cout=0;
int ayylmao = 500;


void setup() {
  size(600, 250);
  background(0);



  values = new float[width/3];
  index = 0;
}

float maybeRandomHeight() {
  if (random(10) < 1) {
    return random(height/3, 2*height/3);
  } else {
    return 0;
  }
}

void draw() {
  background(255);

  values[index] = maybeRandomHeight();
  index = index + 1;
  if (index >= values.length) {
    index = 0;
  }

  for (int i = 0; i < values.length; ++i) {
    int realIndex = index + i;
    /*if (realIndex > ayylmao) {
      ayylmao = realIndex;
      println(ayylmao);
      highest value of realIndex = 398 */
      
    if (realIndex >= values.length) {
      realIndex -= values.length;
      /*if (realIndex < ayylmao) {
      ayylmao = realIndex;
      println(ayylmao);
      Lowest Value of realIndex = 0
    } */
    }
    line(i*3, height-values[realIndex], i*3, height);
    /*if (index==0) {
     cout++;
     }
     println(cout);
     Using a stopwatch and println(), I determined that the value of index resets 
     twice in 10 seconds
    */
   
   
  }
}
