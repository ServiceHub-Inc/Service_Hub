import 'package:connectivity/connectivity.dart';

Future<bool> internetCheck() async {
  var result = await Connectivity().checkConnectivity();

  if (result == ConnectivityResult.none) {
    return false;
  } else {
    return true;
  }
}
