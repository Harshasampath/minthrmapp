import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final GetStorage storage = GetStorage();

  // Initialize the theme state
  ThemeController() {
    _loadCurrentTheme();
  }

  RxBool darkTheme = false.obs;

  // Toggle theme and save to storage
  void onChangeTheme() {
    darkTheme.value = !darkTheme.value;

    // Save the theme state to storage
    storage.write("theme", darkTheme.value);
    update();
  }

  // Load the current theme from storage
  void _loadCurrentTheme() {
    darkTheme.value = storage.read<bool>("theme") ?? false;
    update();
  }
}
