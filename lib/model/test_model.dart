class TestModel {
  String title, about, labName;
  int price;
  TestModel({
    required this.title,
    this.about =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam.",
    required this.price,
    this.labName = "Royal Lab",
  });
}
