// lib/models/project_model.dart
class Project {
  final String title;
  final String description;
  final String imageUrl;
  final String projectUrl;
  final String? googlePlayUrl; // Nuevo: Link opcional a Google Play

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.projectUrl,
    this.googlePlayUrl, // Añadido como opcional
  });
}
