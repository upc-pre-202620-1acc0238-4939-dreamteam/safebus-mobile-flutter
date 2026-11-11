import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../widgets/safebus_logo.dart';
import '../driver/driver_shift_screen.dart';
import '../passenger/passenger_placeholder_screen.dart';
import '../supervisor/supervisor_placeholder_screen.dart';

/// Pantalla inicial: el usuario elige su rol.
class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              const SafeBusLogo(fontSize: 34),
              const SizedBox(height: 8),
              Text(
                'Seguridad en el transporte público',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 40),
              Text(
                'Selecciona tu rol',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              _RoleCard(
                icon: Icons.directions_bus_rounded,
                color: AppColors.secondary,
                title: 'Conductor',
                subtitle: 'Gestiona tu turno y reporta emergencias.',
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const DriverShiftScreen(),
                  ),
                ),
              ),
              _RoleCard(
                icon: Icons.person_rounded,
                color: AppColors.primary,
                title: 'Pasajero',
                subtitle: 'Verifica tu viaje y envía solicitudes.',
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const PassengerPlaceholderScreen(),
                  ),
                ),
              ),
              _RoleCard(
                icon: Icons.shield_rounded,
                color: AppColors.high,
                title: 'Supervisor',
                subtitle: 'Monitorea la flota y atiende emergencias.',
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const SupervisorPlaceholderScreen(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RoleCard extends StatelessWidget {
  const _RoleCard({
    required this.icon,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final Color color;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 26,
                backgroundColor: color.withOpacity(0.12),
                child: Icon(icon, color: color),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 4),
                    Text(subtitle,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
