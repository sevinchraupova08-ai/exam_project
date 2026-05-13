import 'package:exam_project/features/auth/cubit/navigation_cubit.dart';
import 'package:exam_project/features/onboarding/presentation/pages/orders_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'notification_empty_page.dart';
import 'notification_list_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, AppTab>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: IndexedStack(
            index: state.index,
            children: [
              NotificationEmptyPage(),
              NotificationListPage(),
              OrdersPage(),
              const Scaffold(body: Center(child: Text("Profile"),),)
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.index,
            onTap: (index) => context.read<NavigationCubit>().changeTab(AppTab.values[index]),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xFF8E6CEF),
            unselectedItemColor: Colors.grey[400],
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.receipt_long_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
            ],
          ),
        );
      },
    );
  }
}