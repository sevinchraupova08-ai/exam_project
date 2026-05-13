import 'package:flutter_bloc/flutter_bloc.dart';

enum AppTab { home, notifications, orders, profile }

class NavigationCubit extends Cubit<AppTab> {
  NavigationCubit() : super(AppTab.notifications); 

  void changeTab(AppTab tab) => emit(tab);
}