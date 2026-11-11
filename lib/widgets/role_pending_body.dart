import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

/// Cuerpo reutilizable para los roles aún no implementados en esta entrega
/// (el 30% cubre el rol Conductor; Pasajero y Supervisor quedan pendientes).
class RolePendingBody extends StatelessWidget {
  const RolePendingBody({
    super.key,
    required this.role,
    required this.items,
  });

  final String role;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.pending.withOpacity(0.18),
              borderRadius: BorderRadius.circular(999),
            ),
            child: Text(
              'Pendiente · fuera del alcance de esta entrega (30%)',
              style: theme.textTheme.labelMedium
                  ?.copyWith(color: AppColors.high),
            ),
          ),
          const SizedBox(height: 20),
          Text('Rol $role', style: theme.textTheme.headlineSmall),
          const SizedBox(height: 8),
          Text(
            'Las siguientes funcionalidades forman parte del 70% restante '
            'del proyecto y se implementarán en las próximas iteraciones:',
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          ...items.map(
            (it) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.radio_button_unchecked_rounded,
                      size: 20, color: AppColors.muted),
                  const SizedBox(width: 12),
                  Expanded(
                      child: Text(it, style: theme.textTheme.bodyLarge)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
