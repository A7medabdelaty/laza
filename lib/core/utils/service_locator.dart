import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:laza/core/utils/services/remote/api_service.dart';
import 'package:laza/core/utils/services/remote/auth_service.dart';
import 'package:laza/services/auth/forget_password/data/repos/forget_password_repo_impl.dart';
import 'package:laza/services/auth/get_started/data/repos/get_started_repo_impl.dart';
import 'package:laza/services/auth/login/data/repos/login_repo_impl.dart';
import 'package:laza/services/auth/register/data/repos/register_repo_impl.dart';
import 'package:laza/services/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<AuthService>(
    AuthService(),
  );
  getIt.registerSingleton<ApiService>(
    ApiService(Dio()),
  );
  getIt.registerSingleton<GetStartedRepoImpl>(
    GetStartedRepoImpl(getIt.get<AuthService>()),
  );
  getIt.registerSingleton<RegisterRepoImpl>(
    RegisterRepoImpl(getIt.get<AuthService>()),
  );
  getIt.registerSingleton<LoginRepoImpl>(
    LoginRepoImpl(getIt.get<AuthService>()),
  );
  getIt.registerSingleton<ForgetPasswordRepoImpl>(
    ForgetPasswordRepoImpl(getIt.get<AuthService>()),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<ApiService>()),
  );
}
