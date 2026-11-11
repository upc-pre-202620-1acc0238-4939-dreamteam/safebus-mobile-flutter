import 'package:flutter/material.dart';

import '../../widgets/role_pending_body.dart';

/// Rol Pasajero — fuera del alcance del 30% entregado (pendiente, 70% restante).
class PassengerPlaceholderScreen extends StatelessWidget {
  const PassengerPlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pasajero')),
      body: const RolePendingBody(
        role: 'Pasajero',
        items: [
          'Registro con DNI',
          'Mi viaje (verificación por QR)',
          'Alertas del bus',
          'Solicitud de pánico con evidencia',
          'Seguimiento de solicitudes',
        ],
      ),
    );
  }
}
