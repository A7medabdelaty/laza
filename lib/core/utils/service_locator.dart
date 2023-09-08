import 'package:get_it/get_it.dart';
import 'package:laza/core/utils/services/auth_service.dart';
import 'package:laza/services/auth/get_started/data/repos/get_started_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<AuthService>(AuthService());
  getIt.registerSingleton<GetStartedRepoImpl>(GetStartedRepoImpl(getIt.get<AuthService>()));
}
