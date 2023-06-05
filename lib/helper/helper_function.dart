import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
// Keys
  static String userLoggedInKey = "LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "EMAILKEY";

// saving the dato to shared file

// getting the data from shared file

  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }
}
