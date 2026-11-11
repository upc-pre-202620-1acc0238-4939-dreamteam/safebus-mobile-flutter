# SafeBus Mobile — Flutter

Aplicación móvil de **SafeBus** (startup **DreamTeam**), orientada a la seguridad en el transporte público. Esta es la versión en **Flutter** del proyecto mobile.

> **Alcance de esta entrega: 30%.** Incluye toda la base del proyecto (tema, paleta y tipografía oficiales, navegación y selección de rol) y el **rol Conductor** completo. Los roles **Pasajero** y **Supervisor** quedan como pantallas marcadas "pendiente" y forman parte del 70% restante.

## Características incluidas (30%)

- Estructura del proyecto Flutter con arquitectura por features.
- Tema **Material 3** con la paleta oficial (`#0D2C54`, `#00796B`, `#C62828`, `#BF360C`, `#F9A825`) y tipografía **Inter** (`google_fonts`).
- Soporte de tema claro y oscuro (`ThemeMode.system`).
- Pantalla de **selección de rol** (Conductor / Pasajero / Supervisor).
- **Rol Conductor:**
  - Turno asignado con unidad, ruta y horario.
  - Validación de la unidad por **QR** (simulada).
  - Botón de **Emergencia** que declara un caso **Critical**.
  - Pantalla de confirmación de emergencia enviada.

## Pendiente (70% restante)

- Rol Pasajero: registro con DNI, mi viaje, alertas del bus, solicitud de pánico y seguimiento.
- Rol Supervisor: monitoreo de flota, atención de emergencias, revisión de grupos y asignaciones.
- Backend / API (datos actualmente simulados).

## Requisitos

- Flutter SDK ≥ 3.4.0
- Dart ≥ 3.4.0

## Cómo ejecutarlo

Este repositorio contiene el código Dart (`lib/`) y los archivos de configuración. Las carpetas de plataforma (`android/`, `ios/`, etc.) se generan localmente:

```bash
# 1) Generar las carpetas de plataforma sobre este proyecto
flutter create .

# 2) Descargar dependencias
flutter pub get

# 3) Ejecutar en un emulador o dispositivo
flutter run
```

## Estructura

```
lib/
├── main.dart                  # Entry point + MaterialApp
├── theme/                     # Paleta y tema (Material 3 + Inter)
├── models/                    # Shift, Emergency (prioridad/estado)
├── widgets/                   # Logo, chip de prioridad, cuerpo "pendiente"
└── features/
    ├── role_selection/        # Selección de rol
    ├── driver/                # Rol Conductor (implementado)
    ├── passenger/             # Rol Pasajero (pendiente)
    └── supervisor/            # Rol Supervisor (pendiente)
```

---

Proyecto académico — DreamTeam · SafeBus.
