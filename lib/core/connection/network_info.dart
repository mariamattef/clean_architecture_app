//!data_connection_checker_tv
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class InternetService {
  Future<bool> isConnected();
}

class InternetServiceImpl implements InternetService {
  @override
  Future<bool> isConnected() async {
    final InternetConnectionChecker internetConnectionChecker =
        InternetConnectionChecker.createInstance();
    return await internetConnectionChecker.hasConnection;
  }
}
