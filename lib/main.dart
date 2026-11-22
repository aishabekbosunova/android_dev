import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/auth/auth_provider.dart';
import 'screens/auth/login_screen.dart';
import 'screens/main_screen.dart';

void main() => runApp(const ProviderScope(child: MainApp()));

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoggedIn = ref.watch(authProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLoggedIn ? const MainScreen() : const LoginScreen(),
    );
  }
}
