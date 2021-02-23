mixin Square{
  int x;
  int y;
  int square() => x * y;
}

mixin Perimeter{
  int x;
  int y;
  int perimeter() => 2 * (x + y);
}


class Rectangle with Square, Perimeter{
  int height;
  int width;

  Rectangle(this.height, this.width){
    x = height;
    y = width;
  }
  void display(){
    print("Rectangle square = ${square()}");
    print("Rectangle perimeter = ${perimeter()}");
  }
}  

class Cube with Square, Perimeter{
  int side;
  
  Cube(this.side){
    x = side;
    y = side;
  }
  void display(){
    print("Cube square = ${square()}");
    print("Cube perimeter = ${perimeter()}");
  }
}


void main(){
  var rect = new Rectangle(10, 7);
  rect.display();
  var cube = new Cube(10);
  cube.display();
}