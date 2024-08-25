import 'package:auth_api/core/Api/dio_consumer.dart';
import 'package:auth_api/features/authentication/presentation/cubit/authentication_cubet_cubit.dart';
import 'package:auth_api/features/authentication/presentation/screens/loginPage.dart';
import 'package:auth_api/features/authentication/presentation/screens/registerPage.dart';
import 'package:auth_api/features/home/home.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const AuthApp());
}

class AuthApp extends StatelessWidget {
  const AuthApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationCubetCubit(DioConsumer(dio: Dio())),
      child: MaterialApp(
        initialRoute: LoginPage.routName,
        debugShowCheckedModeBanner: false,
        routes: {
          RegisterPage.routName: (context) => const RegisterPage(),
          LoginPage.routName: (context) => const LoginPage(),
          Home.routeName: (context) => const Home(),
        },
      ),
    );
  }
}
