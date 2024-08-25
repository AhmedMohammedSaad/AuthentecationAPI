import 'dart:developer';
import 'package:auth_api/core/Api/dio_consumer.dart';
import 'package:auth_api/core/Api/end_point.dart';
import 'package:auth_api/core/errors/exceptions.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
part 'authentication_cubet_state.dart';

class AuthenticationCubetCubit extends Cubit<AuthenticationCubetState> {
  AuthenticationCubetCubit(this.api) : super(AuthenticationCubetInitial());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  DioConsumer api;
  Login() async {
    try {
      emit(AuthenticationLoding());
      Response response = await api.post(EndPoint.signIn,
          data: {ApiKey.email: email.text, ApiKey.email: password.text});
      emit(AuthenticationSucses());
      log(response.data);
    } on ServerException catch (e) {
      emit(AuthenticationFiler(maseg: e.errorModel.errorMessage));
    }
  }
}
