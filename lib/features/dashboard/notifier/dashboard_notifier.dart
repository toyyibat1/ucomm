import 'package:flutter_riverpod/flutter_riverpod.dart';

// StateNotifier to manage the selected index of the BottomNavigationBar
class DashboardNotifier extends StateNotifier<int> {
  DashboardNotifier() : super(0);

  // Method to set the selected index
  void setIndex(int index) {
    state = index;
  }
}

// Provider for the DashboardNotifier
final dashboardProvider = StateNotifierProvider<DashboardNotifier, int>((ref) {
  return DashboardNotifier();
});

