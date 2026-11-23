import 'package:flutter_test/flutter_test.dart';
import 'package:safebus_mobile/models/emergency.dart';
import 'package:safebus_mobile/theme/app_colors.dart';

void main() {
  group('Emergency Models & Enums Tests', () {
    test('EmergencyPriority has correct labels and colors', () {
      expect(EmergencyPriority.critical.label, 'Critical');
      expect(EmergencyPriority.critical.color, AppColors.critical);
      expect(EmergencyPriority.high.label, 'High');
      expect(EmergencyPriority.high.color, AppColors.high);
    });

    test('EmergencyStatus labels are defined properly', () {
      expect(EmergencyStatus.active.label, 'Activa');
      expect(EmergencyStatus.inAttention.label, 'En atención');
      expect(EmergencyStatus.closed.label, 'Cerrada');
    });

    test('EmergencyIncident sample initializes with expected values', () {
      final incident = EmergencyIncident.sample;
      expect(incident.id, '001');
      expect(incident.unit, 'A1B-702');
      expect(incident.priority, EmergencyPriority.critical);
      expect(incident.status, EmergencyStatus.active);
      expect(incident.isActive, isTrue);
      expect(incident.isCritical, isTrue);
      expect(incident.referenceCode, 'EMG-001');
    });
  });
}
