import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/model/book_model.dart';

class TestDetailsController extends GetxController {
  static int _dateIndexKey = 2;
  int get dateIndexKey => _dateIndexKey;
  static DateTime _dateSelected = DateTime.now();
  DateTime get dateSelected => _dateSelected;

  setDateSelected(DateTime dateSelected) {
    _dateSelected = dateSelected;
  }

  static int _timeIndexKey = 1;
  int get timeIndexKey => _timeIndexKey;

  static final List<BookModel> _books = [];
  List<BookModel> get books => _books;
  int time = 11;

  setBook(BookModel book) {
    _books.add(book);
  }

  setDateIndex(int index) {
    _dateIndexKey = index;
    update();
  }

  setTimeIndex(int index) {
    _timeIndexKey = index;
    time = 11;
    update();
  }

  String? _selectedDate;
  String? get selectedDate => _selectedDate;

  Future<void> selectDate(context) async {
    _selectedDate = "${dateSelected.month}/${dateSelected.year}";
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: dateSelected,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      initialDatePickerMode: DatePickerMode.day,
    );

    if (pickedDate != null) {
      setDateSelected(pickedDate);
      setDateIndex(2);
      _selectedDate = "${pickedDate.month}/${pickedDate.year}";
      update();
    }
  }
}
