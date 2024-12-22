import 'package:get/get.dart';
import 'package:tash5esy/model/appointment_model.dart';
import 'package:tash5esy/model/test_model.dart';

class PaymentsController extends GetxController {
  List<TestModel> _testModels = [
    TestModel(title: "CBC", price: 150),
    TestModel(title: "Liver Function", price: 230),
    TestModel(title: "Lipid Panel", price: 230),
    TestModel(title: "HbA1c", price: 230),
    TestModel(title: "MRI X-Ray", price: 230),
  ];

  List<AppointmentModel> _appointmentModels = [
    AppointmentModel(
      title: "Angiolory",
      doctorName: "Dr. Chikanso Chima",
      image: "doctor 1.png",
    ),
    AppointmentModel(
      title: "Dental",
      doctorName: "Dr. Micheal Angelo",
      image: "doctor 2.png",
    ),
    AppointmentModel(
      title: "Neurology",
      doctorName: "Dr. Danny Phantom",
      image: "doctor 3.png",
    ),
    AppointmentModel(
      title: "Physical Therapy",
      doctorName: "Dr. Micheal Angelo",
      image: "doctor 4.png",
    ),
  ];

  List<TestModel> get testModels => _testModels;
  List<AppointmentModel> get appointmentModels => _appointmentModels;

  int _indexKey = 0;
  int get indexKey => _indexKey;

  setIndexKey(index) {
    _indexKey = index;
    update();
  }
}
