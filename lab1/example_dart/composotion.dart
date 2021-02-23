class Rectangle{
  int height;
  int width;
  int s;

  Rectangle(this.height, this.width);

  int square() => s = height * width;

  void display(){
    print("Square of Rectangle = ${square()}");
  }
}

class Cube{
  var rect;

  Cube(side){
    rect = new Rectangle(side, side);
  }

  void display() {
    print("Square of Cube = ${rect.square()}");
  }
}  

void main(){
  var rect = new Rectangle(10, 7);
  rect.display();
  var cube = new Cube(10);
  cube.display();
}