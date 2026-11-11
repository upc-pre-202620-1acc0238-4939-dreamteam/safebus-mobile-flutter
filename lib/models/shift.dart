/// Turno asignado a un conductor.
class Shift {
  const Shift({
    required this.unit,
    required this.route,
    required this.origin,
    required this.destination,
    required this.schedule,
    this.validated = false,
  });

  final String unit;
  final String route;
  final String origin;
  final String destination;
  final String schedule;
  final bool validated;

  Shift copyWith({bool? validated}) {
    return Shift(
      unit: unit,
      route: route,
      origin: origin,
      destination: destination,
      schedule: schedule,
      validated: validated ?? this.validated,
    );
  }

  /// Turno de muestra (datos simulados, igual que el prototipo nativo).
  static const Shift sample = Shift(
    unit: 'A1B-702',
    route: '23',
    origin: 'Terminal Naranjal',
    destination: 'Av. Javier Prado',
    schedule: '06:00 - 14:00',
  );
}
