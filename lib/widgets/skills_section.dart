import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  final List<String> skills = const [
    'Flutter',
    'Dart',
    'Firebase',
    'Git',
    'Provider',
    'APIs de IA',
    'HTML & CSS',
    'JavaScript',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Habilidades Técnicas',
          style: GoogleFonts.montserrat(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 12.0,
          runSpacing: 12.0,
          alignment: WrapAlignment.center,
          children: skills
              .map(
                (skill) => Chip(
                  label: Text(
                    skill,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  backgroundColor: Colors.blueGrey[700],
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
