import 'package:flutter/material.dart';
import 'package:mi_portafolio_web/models/proyect_models.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mi_portafolio_web/widgets/contact_section.dart';

import '../widgets/about_section.dart';
import '../widgets/project_card.dart';
import '../widgets/skills_section.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Project> projects = [
    Project(
      title: 'MyChat IA',
      description:
          'MyChat IA es una innovadora aplicación de chat que utiliza inteligencia artificial para responder a tus preguntas y mantener conversaciones naturales.',
      imageUrl: 'assets/images/proyecto1.png',
      projectUrl:
          'https://github.com/alejoBarr/my_chat_ia_app', // Reemplaza si es otra URL
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.alejandro.mychat3', // URL de ejemplo
    ),
    Project(
      title: 'Gompong',
      description:
          '¡Un adictivo arcade espacial para romper ladrillos sin parar!',
      imageUrl: 'assets/images/proyecto2.png',
      projectUrl:
          'https://github.com/alejoBarr/Gompong', // Reemplaza si es otra URL
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.alejandro.gompong', // URL de ejemplo
    ),
    Project(
      title: 'MemoryGO',
      description:
          '¡Desafía tu mente! Un adictivo juego de memoria con niveles y desafíos.',
      imageUrl: 'assets/images/proyecto3.png',
      projectUrl:
          'https://github.com/alejoBarr/MemoGo_Game', // Reemplaza si es otra URL
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.alejandro.memogo', // URL de ejemplo
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '</JAB> DESARROLLO DE SOFTWARE',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    const AboutSection(),
                    const SizedBox(height: 40),
                    const SkillsSection(),
                    const SizedBox(height: 40),
                    Text(
                      'Mis Proyectos',
                      style: GoogleFonts.montserrat(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      alignment: WrapAlignment.center,
                      children: projects
                          .map((project) => ProjectCard(project: project))
                          .toList(),
                    ),
                    const SizedBox(height: 60),
                    // Nuevo pie de página
                    _buildFooter(),
                  ],
                ),
              ),
            ),
          ),
          // Barra de contacto flotante
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: ContactSection(), // Usamos el widget que ya existe
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      color: Colors.blueGrey[50],
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        children: [
          Text(
            'Gracias por visitar mi portafolio',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '© ${DateTime.now().year} </JAB>. Todos los derechos reservados.',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
