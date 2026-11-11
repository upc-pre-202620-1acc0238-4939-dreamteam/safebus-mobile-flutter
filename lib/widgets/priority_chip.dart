import 'package:flutter/material.dart';

import '../models/emergency.dart';

/// Chip de prioridad (Critical / High) con el color oficial.
class PriorityChip extends StatelessWidget {
  const PriorityChip({super.key, required this.priority});

  final EmergencyPriority priority;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: priority.color,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.warning_amber_rounded, size: 16, color: Colors.white),
          const SizedBox(width: 6),
          Text(
            priority.label.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
