
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ValidationController extends GetxController {
  String? isValidNationalId(String value) {
    bool regx = RegExp(r'^\d{14}$').hasMatch(value);

    if (value.isEmpty) {
      return "National ID cannot be empty";
    } else if (!regx) {
      return "National ID must be 14 digits";
    }
    return null;
  }

  String? isValidPassword(String value) {
    bool regx = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*?&#/])[A-Za-z\d@$!%*?&#]{6,}$',
    ).hasMatch(value);

    if (value.isEmpty) {
      return "Password cannot be empty";
    } else if (!regx) {
      return "Password must be at least 6 characters, with letters, numbers, and symbols";
    }
    return null;
  }

  String? isValidPhoneNumber(String value) {
    if (value.isEmpty) {
      return "Phone number cannot be empty";
    }
    return null;
  }

  String? isValidEmail(String value) {
    if (value.isEmpty) {
      return "Email cannot be empty";
    }
    return null;
  }

  String? isValidText(String value) {
    if (value.isEmpty) {
      return "This cannot be empty";
    }
    return null;
  }

  obsecureIcon(value) {
    update();
    return !value;
  }

  setChoice(index, choices) {
    update();
    return choices[index];
  }

  setDate(index) {
    update();
    return DateFormat('yyyy-MM-dd').format(index);
  }
}
