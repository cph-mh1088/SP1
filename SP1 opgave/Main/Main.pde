//The use of images instead of ellipse are purely for fun and further development. Can easily be commented out. 

PImage[] cartoonAnimal = new PImage[3];
Animal[] animal = new Animal[3];

void setup() {
  fullScreen();
  for(int i = 0; i < cartoonAnimal.length; i++){
  cartoonAnimal[i] = loadImage("animal0.png");
  }
  
  for (int i = 0; i < animal.length; i++) { //Initialize the objects via the loop
    animal[i] = new Animal(50); //reference to array index to make a new bubble
  }
}

void draw () {
  background (255);
  for (int i = 0; i < animal.length; i++) {
    animal[i].displayObject();
    animal[i].bounce();
  }

}
