import 'package:bloc/bloc.dart';
import 'package:delivery/modules/splash/splash_screen.dart';
import 'package:delivery/shared/shop_cubit/bloc_observer.dart';
import 'package:delivery/shared/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,//ShopMainCubit.get(context).isDark?ThemeMode.dark:
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );  }
}


