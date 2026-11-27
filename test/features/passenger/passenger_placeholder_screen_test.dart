import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safebus_mobile/features/passenger/passenger_placeholder_screen.dart';

void main() {
  testWidgets('PassengerPlaceholderScreen muestra el rol y las funciones pendientes',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: PassengerPlaceholderScreen(),
          ),
        );

        // Título de la barra y encabezado del rol
        expect(find.text('Pasajero'), findsOneWidget);
        expect(find.text('Rol Pasajero'), findsOneWidget);

        // Chip de estado pendiente e ícono del rol
        expect(
          find.text('Pendiente · fuera del alcance de esta entrega (30%)'),
          findsOneWidget,
        );
        expect(find.byIcon(Icons.person_rounded), findsOneWidget);

        // Las 5 funcionalidades del 70% restante, cada una en su tarjeta
        expect(find.text('Registro con DNI'), findsOneWidget);
        expect(find.text('Mi viaje (verificación por QR)'), findsOneWidget);
        expect(find.text('Alertas del bus'), findsOneWidget);
        expect(find.text('Solicitud de pánico con evidencia'), findsOneWidget);
        expect(find.text('Seguimiento de solicitudes'), findsOneWidget);
        expect(find.byType(Card), findsNWidgets(5));
      });
}