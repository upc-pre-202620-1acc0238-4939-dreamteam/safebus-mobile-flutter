import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

/// Lockup de marca "SafeBus" (Safe en blanco/texto, Bus en acento).
class SafeBusLogo extends StatelessWidget {
  const SafeBusLogo({super.key, this.fontSize = 28, this.onDark = false});

  final double fontSize;
  final bool onDark;

  @override
  Widget build(BuildContext context) {
    final base = onDark ? Colors.white : AppColors.primary;
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w900,
          letterSpacing: -0.5,
        ),
        children: [
          TextSpan(text: 'Safe', style: TextStyle(color: base)),
          const TextSpan(
            text: 'Bus',
            style: TextStyle(color: AppColors.secondary),
          ),
        ],
      ),
    );
  }
}
