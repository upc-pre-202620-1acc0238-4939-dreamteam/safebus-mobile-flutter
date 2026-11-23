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

/// Incidente de emergencia reportado por conductor o detectado por la plataforma.
class EmergencyIncident {
  const EmergencyIncident({
    required this.id,
    required this.unit,
    this.priority = EmergencyPriority.critical,
    this.status = EmergencyStatus.active,
    required this.createdAt,
    this.description,
  });

  final String id;
  final String unit;
  final EmergencyPriority priority;
  final EmergencyStatus status;
  final DateTime createdAt;
  final String? description;

  bool get isActive => status == EmergencyStatus.active;
  bool get isCritical => priority == EmergencyPriority.critical;

  String get referenceCode => 'EMG-$id';

  /// Incidente de muestra para flujos simulados del conductor.
  static EmergencyIncident sample = EmergencyIncident(
    id: '001',
    unit: 'A1B-702',
    priority: EmergencyPriority.critical,
    status: EmergencyStatus.active,
    createdAt: DateTime.now(),
    description: 'Emergencia reportada por el conductor en ruta 23.',
  );
}

