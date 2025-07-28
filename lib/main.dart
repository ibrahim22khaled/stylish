import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/utils/functions/setup_service_locator.dart';
import 'package:stylish/features/auth/presentation/forgotpassword_screen.dart';
import 'package:stylish/features/auth/presentation/login_screen.dart';
import 'package:stylish/features/auth/presentation/signup_screen.dart';
import 'package:stylish/features/get_started/presentation/get_started_screen.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';
import 'package:stylish/features/home_screen/domain/use_cases/get_products_use_case.dart';
import 'package:stylish/features/home_screen/presentation/home_screen.dart';
import 'package:stylish/features/home_screen/presentation/manager/home_products_cubit/cubit/home_products_cubit.dart';
import 'package:stylish/features/home_screen/presentation/screens/trending_products_screen.dart';
import 'package:stylish/features/home_screen/data/repos/home_repo_impl.dart';
import 'package:stylish/features/on_boarding/presentation/on_boarding_screen.dart';
import 'package:stylish/features/splash/presentation/splash_screen.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductEntityAdapter());
  setupServiceLocator(); // using get it for dependency injection
  
  await Hive.openBox<ProductEntity>(KHomeBox);
  runApp(const Stylish());
}

class Stylish extends StatelessWidget {
  const Stylish({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      
      providers: [
        BlocProvider(
          create: (context) {
            return HomeProductsCubit(
              GetProductsUseCase(
                getIt.get<HomeRepoImpl>()
              ),
            )..getProducts(); // trigger loading products
          },
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Montserrat',
        ),
      
        debugShowCheckedModeBanner: false,
        routes: {
          "onboardingscreen": (context) => OnBoardingScreen(),
          "loginscreen": (context) => LoginScreen(),
          "signupscreen": (context) => SignupScreen(),
          "forgotpasswordscreen": (context) => ForgotpasswordScreen(),
          "getstartedscreen": (context) => GetStartedScreen(),
          "homescreen": (context) => HomeScreen(),
          "trendingproductsscreen": (context) => TrendingProductsScreen(),
        },
        home: SplashScreen(),
      ),
    );
  }
}
