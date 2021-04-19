import 'dart:ui';

class BaseModel {
  int a, b;

  String name;
  String location;
  // final修饰, 必须初始化?
  // final int id;

  // BaseModel(this.name, this.location) {
  //   this.name = 'asd';
  // }

  BaseModel(name, location) {
    this.name = name;
    this.location = location;
  }
  BaseModel.unLaunched(String name) : this(name, '2010');

  int get launchYear => int.parse('location');

  void describe() {
    // 这里的this, 指的是当前对象么?
    this.name = 'da';
    this.location = '12';
  }

  static hahah() {
    // 这里的this指什么
  }
}

class Point {
  double x, y;
  static double c;
  // Point(this.x, this.y);
  // 上下这俩相等, 上面是语法糖
  Point(double x2, double y2, {double c}) {
    x = x2;
    y = y2;
    Point.c = c ?? 10;
    c = c ?? 19;
  }

  // static staticMethod() : x = 0

  Point.origin()
      : x = 10,
        y = 11;
}

class ImmutablePoint {
  final double x, y;

  static const origin = ImmutablePoint(null, null);

  const ImmutablePoint(this.x, this.y);
}
// class ChildPoint extends Point {
//   // ChildPoint();
// }
