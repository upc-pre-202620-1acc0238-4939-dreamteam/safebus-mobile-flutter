import 'package:flutter/material.dart';

import 'theme/app_theme.dart';
import 'features/role_selection/role_selection_screen.dart';

void main() {
  runApp(const SafeBusApp());
}

class SafeBusApp extends StatelessWidget {
  const SafeBusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafeBus',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      home: const RoleSelectionScreen(),
    );
  }
}
