abstract class Shape {

  factory Shape(List<int> list) {
    switch (list.length){
      case 1: return Point(list);
      case 2: return Line(list);
      case 3: return Triangle(list);
      case 4: return Rectangle(list);
      default: return null;
    }
  }

  void draw();
}

class Point implements Shape{
  List<int> coord;

  Point(this.coord);
  void draw() {
    print("Point with coord: $coord");
  }
}

class Line implements Shape{
  List<int> coord;

  Line(this.coord);
  void draw() {
    print("Line with coord: $coord");
  }
}

class Triangle implements Shape{
  List<int> coord;

  Triangle(this.coord);
  void draw() {
    print("Triangle with coord: $coord");
  }
}

class Rectangle implements Shape{
  List<int> coord;

  Rectangle(this.coord);
  void draw() {
    print("Rectangle with coord: $coord");
  }
}

void main(){
  final shape1 = Shape([1]);
  final shape2 = Shape([1, 2]);
  final shape3 = Shape([1, 2, 3]);
  final shape4 = Shape([1, 2, 3, 4]);

  shape1.draw();
  shape2.draw();
  shape3.draw();
  shape4.draw();
}