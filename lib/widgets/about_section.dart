import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // --- Nueva Cabecera con Fondo ---
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueGrey[100]!, Colors.blueGrey[50]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border(
              bottom: BorderSide(color: Colors.blueGrey[200]!, width: 1),
            ),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 4),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/fotoperfil.png'),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '</JAB>',
                style: GoogleFonts.montserrat(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Desarrollador de Software • Web & Móvil',
                style: GoogleFonts.roboto(fontSize: 18, color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        // --- Contenido Principal ---
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              children: [
                Text(
                  'Hola, soy un desarrollador apasionado por transformar ideas en soluciones digitales. Mi experiencia se centra en dos áreas clave:',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(fontSize: 16, height: 1.5),
                ),
                const SizedBox(height: 30),
                const Divider(indent: 100, endIndent: 100),
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // --- Columna 1: Desarrollo Móvil ---
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '📱 Desarrollo Móvil',
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildServiceItem(
                            '🏛️ ',
                            'Para Instituciones: ',
                            'Apps educativas, herramientas administrativas, soluciones internas.',
                          ),
                          const SizedBox(height: 8),
                          _buildServiceItem(
                            '🏪 ',
                            'Para Comercios: ',
                            'Apps de e-commerce, programas de lealtad y sistemas de reserva.',
                          ),
                          const SizedBox(height: 8),
                          _buildServiceItem(
                            '🚀 ',
                            'Para Emprendedores: ',
                            'MVPs, apps de servicios, herramientas de productividad.',
                          ),
                          const SizedBox(height: 8),
                          _buildServiceItem(
                            '🔧 ',
                            'Proyectos a Medida: ',
                            'Apps con funcionalidades específicas, herramientas de nicho y prototipos.',
                          ),
                          const SizedBox(height: 20),
                          Wrap(
                            spacing: 20.0,
                            runSpacing: 10.0,
                            alignment: WrapAlignment.center,
                            children: [
                              _buildTechIcon(
                                FontAwesomeIcons.flutter,
                                'Flutter',
                              ),
                              _buildTechIcon(FontAwesomeIcons.fire, 'Firebase'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 25),
                    // --- Columna 2: Desarrollo Web ---
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '💻 Desarrollo Web',
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildServiceItem(
                            '🏛️ ',
                            'Para Instituciones: ',
                            'Sitios institucionales, portales educativos, plataformas gubernamentales.',
                          ),
                          const SizedBox(height: 8),
                          _buildServiceItem(
                            '🏪 ',
                            'Para Comercios: ',
                            'Tiendas online (E-commerce), catálogos digitales y sitios con reserva de turnos.',
                          ),
                          const SizedBox(height: 8),
                          _buildServiceItem(
                            '🚀 ',
                            'Para Emprendedores: ',
                            'Páginas corporativas, portafolios digitales y landing pages de alto impacto.',
                          ),
                          const SizedBox(height: 8),
                          _buildServiceItem(
                            '🔧 ',
                            'Proyectos a Medida: ',
                            'Blogs personales, webs para eventos, sitios experimentales y más.',
                          ),
                          const SizedBox(height: 20),
                          Wrap(
                            spacing: 20.0,
                            runSpacing: 10.0,
                            alignment: WrapAlignment.center,
                            children: [
                              _buildTechIcon(FontAwesomeIcons.html5, 'HTML5'),
                              _buildTechIcon(FontAwesomeIcons.css3Alt, 'CSS3'),
                              _buildTechIcon(FontAwesomeIcons.js, 'JavaScript'),
                              _buildTechIcon(
                                FontAwesomeIcons.flutter,
                                'Flutter Web',
                              ),
                              _buildTechIcon(FontAwesomeIcons.fire, 'Firebase'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 25),
                    // --- Columna 3: APIs y IA ---
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '🤖 APIs y IA',
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildServiceItem(
                            '🔌 ',
                            'APIs REST: ',
                            'Conecto tus apps con servicios externos para pagos, datos, mapas y más.',
                          ),
                          const SizedBox(height: 8),
                          _buildServiceItem(
                            '🧠 ',
                            'Modelos de IA: ',
                            'Integro modelos de IA para crear chatbots, análisis de datos y funciones inteligentes.',
                          ),
                          const SizedBox(height: 8),
                          _buildServiceItem(
                            '☁️ ',
                            'Backend (BaaS): ',
                            'Uso plataformas como Firebase para bases de datos, autenticación y cloud functions.',
                          ),
                          const SizedBox(height: 20),
                          Wrap(
                            spacing: 20.0,
                            runSpacing: 10.0,
                            alignment: WrapAlignment.center,
                            children: [
                              _buildTechIcon(
                                FontAwesomeIcons.robot,
                                'APIs de IA',
                              ),
                              _buildTechIcon(
                                FontAwesomeIcons.server,
                                'APIs REST',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 700),
                  child: Text(
                    'Mi objetivo es construir productos de alta calidad que no solo cumplan con los requisitos técnicos, sino que también ofrezcan una experiencia de usuario memorable. Si tienes una idea o un proyecto en mente, ¡hablemos!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      height: 1.6,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildServiceItem(String emoji, String title, String description) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.roboto(
          fontSize: 16,
          height: 1.5,
          color: Colors.black87,
        ),
        children: <TextSpan>[
          TextSpan(text: emoji),
          TextSpan(
            text: title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: description),
        ],
      ),
    );
  }

  Widget _buildTechIcon(IconData icon, String tooltip) {
    return Tooltip(
      message: tooltip,
      waitDuration: const Duration(milliseconds: 300),
      child: FaIcon(icon, color: Colors.blueGrey[700], size: 30),
    );
  }
}
