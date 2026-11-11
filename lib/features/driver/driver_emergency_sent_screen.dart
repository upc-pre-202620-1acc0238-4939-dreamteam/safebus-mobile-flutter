import 'package:flutter/material.dart';

import '../../models/emergency.dart';
import '../../widgets/priority_chip.dart';

/// Confirmación de emergencia Critical enviada a la empresa.
class DriverEmergencySentScreen extends StatelessWidget {
  const DriverEmergencySentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Emergencia enviada')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                PriorityChip(priority: EmergencyPriority.critical),
                SizedBox(width: 8),
                _StatusChip(status: EmergencyStatus.active),
              ],
            ),
            const SizedBox(height: 20),
            Text('Emergencia enviada', style: theme.textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(
              'Tu empresa fue notificada. El caso quedó registrado con '
              'prioridad Critical.',
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_rounded),
              label: const Text('Ver detalles'),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(52),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});

  final EmergencyStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.error,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        status.label.toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }
}
