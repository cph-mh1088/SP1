class Animal {

  //Class data. A collection of variables.
  float x;
  float y;
  float d;
  int xSpeed;
  int ySpeed;

  //Constructor that takes a float as it's parameter.
  Animal(float diameter)
  {
    x = width/2;
    y = height;
    d = diameter;
    xSpeed = 5;
    ySpeed = 5;
  }

  //Method that draws the objects. The method can easily change from image to ellipse. 
  void displayObject()
  {
    //stroke(0);
    //fill (random(255), random(255), random(255));
    //ellipse (x, y, d, d );
    imageMode(CENTER);
    image(cartoonAnimal[0],x ,y);
  }


  //Method that makes the objects bounce around the screen.
  void bounce() {
    x = x + xSpeed + random (-1,1); //assignment of x
    if (x > width || x < 0) {
      xSpeed = xSpeed * -1;
    }
    y = y + ySpeed + random(-1,1); //assignment of y
    if (y > height || y < 0) {
      ySpeed = ySpeed * -1;
    }
  }
}
