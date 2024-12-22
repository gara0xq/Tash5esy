class BookModel {
  BookType type;
  String title, doctorName, labName;
  DateTime? dateTime;
  int price;
  BookModel({
    this.type = BookType.Test,
    this.title = "",
    this.dateTime,
    required this.price,
    this.doctorName = "",
    this.labName = "",
  });
}

enum BookType {
  Test,
  Appointment,
}
