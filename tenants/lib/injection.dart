import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tenants/injection.config.dart';


final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initServiceLocator', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencyInjection(String env) async {
  await $initServiceLocator(getIt, environment: env);
}
