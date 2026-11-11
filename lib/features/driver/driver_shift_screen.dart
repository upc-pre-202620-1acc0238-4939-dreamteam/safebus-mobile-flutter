import 'package:flutter/material.dart';

import '../../models/shift.dart';
import '../../theme/app_colors.dart';
import 'driver_scanner_screen.dart';
import 'driver_emergency_sent_screen.dart';

/// Pantalla principal del conductor: su turno y el botón de emergencia.
class DriverShiftScreen extends StatefulWidget {
  const DriverShiftScreen({super.key});

  @override
  State<DriverShiftScreen> createState() => _DriverShiftScreenState();
}

class _DriverShiftScreenState extends State<DriverShiftScreen> {
  Shift _shift = Shift.sample;

  Future<void> _openScanner() async {
    final validated = await Navigator.of(context).push<bool>(
      MaterialPageRoute(builder: (_) => const DriverScannerScreen()),
    );
    if (validated == true) {
      setState(() => _shift = _shift.copyWith(validated: true));
    }
  }

  void _sendEmergency() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const DriverEmergencySentScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Mi turno')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _StatusPill(validated: _shift.validated),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.directions_bus_rounded,
                            color: AppColors.secondary),
                        const SizedBox(width: 10),
                        Text('Unidad asignada',
                            style: theme.textTheme.labelLarge),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text('${_shift.unit} · Ruta ${_shift.route}',
                        style: theme.textTheme.titleLarge),
                    const SizedBox(height: 10),
                    Text('${_shift.origin} → ${_shift.destination}',
                        style: theme.textTheme.bodyMedium),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Horario', style: theme.textTheme.bodyMedium),
                        Text(_shift.schedule,
                            style: theme.textTheme.titleMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            if (!_shift.validated)
              OutlinedButton.icon(
                onPressed: _openScanner,
                icon: const Icon(Icons.qr_code_scanner_rounded),
                label: const Text('Validar unidad por QR'),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(52),
                ),
              ),
            const Spacer(),
            FilledButton.icon(
              onPressed: _sendEmergency,
              icon: const Icon(Icons.warning_amber_rounded),
              label: const Text('Emergencia'),
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.critical,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Estados simulados de la empresa. No se envía una emergencia real.',
              style: theme.textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusPill extends StatelessWidget {
  const _StatusPill({required this.validated});

  final bool validated;

  @override
  Widget build(BuildContext context) {
    final color = validated ? AppColors.secondary : AppColors.pending;
    final label = validated ? 'Turno validado' : 'Turno activo';
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.schedule_rounded, size: 16, color: Colors.white),
          const SizedBox(width: 6),
          Text(label,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
