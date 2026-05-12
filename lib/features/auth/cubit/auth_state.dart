import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  final bool loading;

  const AuthState({
    this.loading = false,
  });

  AuthState copyWith({
    bool? loading,
  }) {
    return AuthState(
      loading: loading ?? this.loading,
    );
  }

  @override
  List<Object?> get props => [loading];
}