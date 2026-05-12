import 'package:exam_project/features/onboarding/data/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository repository;

  AuthCubit(this.repository) : super(const AuthState());

  Future<void> signIn() async {
    emit(state.copyWith(loading: true));

    await repository.signIn();

    emit(state.copyWith(loading: false));
  }

  Future<void> createAccount() async {
    emit(state.copyWith(loading: true));

    await repository.createAccount();

    emit(state.copyWith(loading: false));
  }
}