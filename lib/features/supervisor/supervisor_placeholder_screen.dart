import 'package:flutter/material.dart';

import '../../widgets/role_pending_body.dart';

/// Rol Supervisor — fuera del alcance del 30% entregado (pendiente, 70% restante).
class SupervisorPlaceholderScreen extends StatelessWidget {
  const SupervisorPlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Supervisor')),
      body: const RolePendingBody(
        role: 'Supervisor',
        items: [
          'Monitoreo de flota (lista y mapa)',
          'Atención de emergencias (Critical / High)',
          'Revisión de grupos de solicitudes',
          'Asignaciones de unidades y conductores',
        ],
      ),
    );
  }
}
