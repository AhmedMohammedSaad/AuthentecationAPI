part of 'authentication_cubet_cubit.dart';

@immutable
sealed class AuthenticationCubetState extends Equatable {
  @override
  List<Object> get props => [];
}

final class AuthenticationCubetInitial extends AuthenticationCubetState {}

class AuthenticationSucses extends AuthenticationCubetState {}

class AuthenticationLoding extends AuthenticationCubetState {}

// ignore: must_be_immutable
class AuthenticationFiler extends AuthenticationCubetState {
  String maseg;
  AuthenticationFiler({
    required this.maseg,
  });
}
