import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tenants/injection.config.dart';


final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initServiceLocator', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencyInjection(String env) {
  $initServiceLocator(getIt, environment: env);
}
