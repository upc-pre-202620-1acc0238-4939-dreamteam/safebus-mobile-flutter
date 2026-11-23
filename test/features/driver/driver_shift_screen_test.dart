import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safebus_mobile/features/driver/driver_shift_screen.dart';

void main() {
  testWidgets('DriverShiftScreen muestra la información del turno y acciones',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: DriverShiftScreen(),
      ),
    );

    // Verifica que se muestre el título y datos del turno
    expect(find.text('Mi turno'), findsOneWidget);
    expect(find.text('Turno activo'), findsOneWidget);
    expect(find.textContaining('A1B-702'), findsOneWidget);
    expect(find.text('06:00 - 14:00'), findsOneWidget);

    // Verifica que el botón de validar por QR esté visible inicialmente
    expect(find.text('Validar unidad por QR'), findsOneWidget);
    expect(find.text('Emergencia'), findsOneWidget);
  });
}
