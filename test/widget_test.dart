import 'package:flutter_test/flutter_test.dart';

import 'package:safebus_mobile/main.dart';

void main() {
  testWidgets('La pantalla de selección de rol muestra los tres roles',
          (WidgetTester tester) async {
        // Construye la app SafeBus.
        await tester.pumpWidget(const SafeBusApp());

        // Verifica que aparezcan los tres roles.
        expect(find.text('Conductor'), findsOneWidget);
        expect(find.text('Pasajero'), findsOneWidget);
        expect(find.text('Supervisor'), findsOneWidget);
      });
}