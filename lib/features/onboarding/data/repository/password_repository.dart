import 'package:exam_project/models/users_model.dart';


class PasswordRepository {
  Future<UsersModel> forgotPassword(String email) async {
    await Future.delayed(const Duration(milliseconds: 500));

    return UsersModel(email: email);
  }
}