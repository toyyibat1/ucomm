import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';

// State class for SplashScreenNotifier
class SplashScreenState {
  final bool isSplashDone;

  SplashScreenState({this.isSplashDone = false});
}

// SplashScreenNotifier manages the splash screen delay logic
class SplashScreenNotifier extends StateNotifier<SplashScreenState> {
  SplashScreenNotifier() : super(SplashScreenState());

  // Method to start the splash delay
  Future<void> startSplash() async {
    await Future.delayed(const Duration(seconds: 3)); // Splash screen delay (3 seconds)
    state = SplashScreenState(isSplashDone: true);    // Set the state when the splash is done
  }
}

// Create a StateNotifierProvider for SplashScreenNotifier
final splashScreenProvider =
    StateNotifierProvider<SplashScreenNotifier, SplashScreenState>((ref) {
  return SplashScreenNotifier();
});

