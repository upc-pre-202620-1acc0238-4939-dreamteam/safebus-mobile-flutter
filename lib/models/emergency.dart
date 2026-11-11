import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

/// Prioridad de una emergencia en SafeBus.
enum EmergencyPriority {
  critical('Critical', AppColors.critical),
  high('High', AppColors.high);

  const EmergencyPriority(this.label, this.color);

  final String label;
  final Color color;
}

/// Estado de un caso de emergencia.
enum EmergencyStatus {
  active('Activa'),
  inAttention('En atención'),
  closed('Cerrada');

  const EmergencyStatus(this.label);

  final String label;
}
