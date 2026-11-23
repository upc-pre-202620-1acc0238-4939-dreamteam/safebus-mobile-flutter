import 'package:flutter_test/flutter_test.dart';
import 'package:safebus_mobile/models/shift.dart';

void main() {
  group('Shift Model Tests', () {
    test('sample shift has default expected values', () {
      const shift = Shift.sample;
      expect(shift.unit, 'A1B-702');
      expect(shift.route, '23');
      expect(shift.origin, 'Terminal Naranjal');
      expect(shift.destination, 'Av. Javier Prado');
      expect(shift.schedule, '06:00 - 14:00');
      expect(shift.validated, isFalse);
      expect(shift.isPendingValidation, isTrue);
      expect(shift.statusText, 'Turno activo');
      expect(shift.routeSummary, 'Terminal Naranjal → Av. Javier Prado');
    });

    test('copyWith updates validation status correctly', () {
      const shift = Shift.sample;
      final validatedShift = shift.copyWith(validated: true);

      expect(validatedShift.validated, isTrue);
      expect(validatedShift.isPendingValidation, isFalse);
      expect(validatedShift.statusText, 'Turno validado');
      expect(validatedShift.unit, shift.unit);
      expect(validatedShift.route, shift.route);
    });
  });
}
