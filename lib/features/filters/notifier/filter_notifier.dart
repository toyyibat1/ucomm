import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckboxNotifier extends StateNotifier<Map<String, bool>> {
  CheckboxNotifier() : super({});

  void toggleCheckbox(String title) {
    state = {
      ...state,
      title: !(state[title] ?? false), // Toggle the checkbox state
    };
  }

  bool isChecked(String title) {
    return state[title] ?? false; // Return the checkbox state
  }
}

// Create a provider for the CheckboxNotifier
final checkboxProvider = StateNotifierProvider<CheckboxNotifier, Map<String, bool>>((ref) {
  return CheckboxNotifier();
});
