import 'package:exam_project/features/onboarding/data/repository/password_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  final PasswordRepository repository;

  PasswordCubit(this.repository) : super(PasswordInitial());

  Future<void> forgotPassword(String email) async {
    emit(PasswordLoading());

    final response = await repository.forgotPassword(email);

    emit(PasswordSuccess(response.email));
  }
}