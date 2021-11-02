import 'package:get_it/get_it.dart';
import 'package:servicehub/utils/callsEmailService.dart';
import 'package:servicehub/utils/localStorage.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  var instance = await LocalStorageService.getInstance();
  locator.registerLazySingleton<LocalStorageService>(() => instance);
  locator.registerLazySingleton(() => UrlLauncherService());
}
