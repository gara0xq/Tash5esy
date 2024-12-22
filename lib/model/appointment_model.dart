class AppointmentModel {
  String title, about, doctorName, image, labName;
  int price;
  AppointmentModel({
    required this.title,
    this.doctorName = "",
    this.image = "",
    this.price = 100,
    this.labName = "Royal Lab",
    this.about =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam.",
  });
}
