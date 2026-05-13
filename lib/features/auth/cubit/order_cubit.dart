import 'package:flutter_bloc/flutter_bloc.dart';

class OrderStatusCubit extends Cubit<String> {
  OrderStatusCubit() : super("Processing");

  void changeStatus(String newStatus) => emit(newStatus);
}