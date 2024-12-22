//Packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Bindings
import 'package:tash5esy/binding.dart';

//Routing Screens
import 'package:tash5esy/view/screens/add%20medical%20record%20form/allergies_screen.dart';
import 'package:tash5esy/view/screens/add%20medical%20record%20form/family_health_screen.dart';
import 'package:tash5esy/view/screens/add%20medical%20record%20form/general_info_screen.dart';
import 'package:tash5esy/view/screens/add%20medical%20record%20form/past_illnesses_screen.dart';
import 'package:tash5esy/view/screens/appointment_deials_screen.dart';
import 'package:tash5esy/view/screens/appointment_screen.dart';
import 'package:tash5esy/view/screens/continue_verify_identity_screen.dart';
import 'package:tash5esy/view/screens/controller_screen.dart';
import 'package:tash5esy/view/screens/document_screen.dart';
import 'package:tash5esy/view/screens/profile/edit_profile_screen.dart';
import 'package:tash5esy/view/screens/forget_password_screen.dart';
import 'package:tash5esy/view/screens/profile/help_center_screen.dart';
import 'package:tash5esy/view/screens/profile/invite_friends_screen.dart';
import 'package:tash5esy/view/screens/login_screen.dart';
import 'package:tash5esy/view/screens/medical_history_screen.dart';
import 'package:tash5esy/view/screens/notifications_screen.dart';
import 'package:tash5esy/view/screens/profile/policy_screen.dart';
import 'package:tash5esy/view/screens/profile/settings/account_info_screen.dart';
import 'package:tash5esy/view/screens/set_new_password_screen.dart';
import 'package:tash5esy/view/screens/profile/settings_screen.dart';
import 'package:tash5esy/view/screens/signup_screen.dart';
import 'package:tash5esy/view/screens/splash_screen.dart';
import 'package:tash5esy/view/screens/profile/settings/terms_screen.dart';
import 'package:tash5esy/view/screens/verify_identity_screen.dart';
import 'package:tash5esy/view/screens/verify_number_screen.dart';
import 'package:tash5esy/view/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/main",
      initialBinding: Binding(),
      getPages: [
        GetPage(name: "/", page: () => SplashScreen()),
        GetPage(name: "/welcome", page: () => const WelcomeScreen()),
        GetPage(name: "/login", page: () => LoginScreen()),
        GetPage(name: "/signup", page: () => SignupScreen()),
        GetPage(name: "/forgetPassword", page: () => ForgetPasswordScreen()),
        GetPage(name: "/verifyNumber", page: () => VerifyNumberScreen()),
        GetPage(
            name: "/verifyIdentity", page: () => const VerifyIdentityScreen()),
        GetPage(name: "/main", page: () => ControllerScreen()),
        GetPage(
            name: "/continueVerifyIdentity",
            page: () => const ContinueVerifyIdentityScreen()),
        GetPage(name: "/setNewPassword", page: () => SetNewPasswordScreen()),
        GetPage(name: "/notification", page: () => const NotificationsScreen()),
        GetPage(name: "/medicalHistory", page: () => const MedicalHistory()),
        GetPage(name: "/generalInfoScreen", page: () => GeneralInfoScreen()),
        GetPage(
            name: "/pastIllnessesScreen", page: () => PastIllnessesScreen()),
        GetPage(name: "/allergiesScreen", page: () => AllergiesScreen()),
        GetPage(name: "/familyHealthScreen", page: () => FamilyHealthScreen()),
        GetPage(
            name: "/appointmentScreen", page: () => const AppointmentScreen()),
        GetPage(
            name: "/appointmentDetialsScreen",
            page: () => const AppointmentDeialsScreen()),
        GetPage(name: "/documentScreen", page: () => DocumentScreen()),
        GetPage(name: "/editProfileScreen", page: () => EditProfileScreen()),
        GetPage(name: "/settingsScreen", page: () => const SettingsScreen()),
        GetPage(name: "/policyScreen", page: () => const PolicyScreen()),
        GetPage(
            name: "/accountInfoScreen", page: () => const AccountInfoScreen()),
        GetPage(name: "/termsScreen", page: () => const TermsScreen()),
        GetPage(
            name: "/helpCenterScreen", page: () => const HelpCenterScreen()),
        GetPage(
            name: "/inviteFriendsScreen", page: () => InviteFriendsScreen()),
      ],
    );
  }
}
