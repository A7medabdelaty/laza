import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/utils/services/local/cache_helper.dart';
import 'package:laza/core/utils/app_routes.dart';
import 'package:laza/core/utils/styles/theme.dart';
import 'package:laza/services/auth/get_started/presentation/views/get_started_view.dart';
import 'package:laza/services/home/data/repos/home_repo_impl.dart';
import 'package:laza/services/home/presentation/view_model/home_cubit.dart';
import 'package:laza/services/layout.dart';
import 'package:laza/services/wishlist/data/repos/wishlist_repo_impl.dart';
import 'package:laza/services/wishlist/presentation/view_model/wishlist_cubit.dart';

import 'bloc_observer.dart';
import 'core/utils/service_locator.dart';
import 'core/utils/services/remote/firebase_service.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService.configureFirebase();
  setupServiceLocator();
  await CacheHelper.init();
  runApp(const MyApp());
}

Widget selectHomeScreen() {
  if (FirebaseAuth.instance.currentUser != null &&
      CacheHelper.getData(key: 'remember me') == true) {
    return const AppLayout();
  } else {
    return const GetStartedView();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return HomeCubit(getIt.get<HomeRepoImpl>())..getProducts();
          },
        ),
        BlocProvider(
          create: (context) {
            return WishlistCubit(getIt.get<WishlistRepoImpl>())
              ..getWishlistProducts();
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        routes: AppRouter.appRoutes(),
        home: selectHomeScreen(),
      ),
    );
  }
}
