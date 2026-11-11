import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

/// Escaneo de QR (simulado) para validar la unidad.
class DriverScannerScreen extends StatelessWidget {
  const DriverScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escanear QR de la unidad')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 240,
              height: 240,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.secondary, width: 3),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Icon(Icons.qr_code_2_rounded, size: 120),
            ),
            const SizedBox(height: 24),
            Text(
              'Apunta la cámara al código QR pegado en la unidad. '
              '(Escaneo simulado para el prototipo.)',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Simular escaneo correcto'),
            ),
          ],
        ),
      ),
    );
  }
}
