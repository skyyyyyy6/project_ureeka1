// Contoh Abstraction

abstract class Shape {
  double getArea(); // abstract method => method yang tidak ada bodynya
}

class Square extends Shape {
  double length;

  Square(this.length);

  @override
  double getArea(){
    return length*length;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea(){
    return 3.14 * radius * radius;
  }
}