import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('No se pudo lanzar $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.solidEnvelope, size: 22),
            onPressed: () {
              final Uri emailLaunchUri = Uri(
                scheme: 'mailto',
                path: 'jbarrios501@gmail.com',
                queryParameters: {
                  'subject': 'Contacto desde tu Portafolio Web',
                  'body':
                      'Hola Alejandro, he visto tu portafolio y me gustaría contactarte.',
                },
              );
              _launchUrl(emailLaunchUri.toString());
            },
            tooltip: 'Email',
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.github, size: 22),
            onPressed: () => _launchUrl('https://github.com/alejoBarr'),
            tooltip: 'GitHub',
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.linkedin, size: 22),
            onPressed: () => _launchUrl(
              'https://www.linkedin.com/in/jos%C3%A9-alejandro-barrios-606989268/',
            ),
            tooltip: 'LinkedIn',
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.facebook, size: 22),
            onPressed: () =>
                _launchUrl('https://www.facebook.com/alebarrios2022/'),
            tooltip: 'Facebook',
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.instagram, size: 22),
            onPressed: () =>
                _launchUrl('https://www.instagram.com/ale_barrios54/'),
            tooltip: 'Instagram',
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.whatsapp, size: 22),
            onPressed: () => _launchUrl(
              'https://wa.me/543795002677',
            ), // Reemplaza con tu número ej: https://wa.me/5491112345678
            tooltip: 'WhatsApp',
          ),
        ],
      ),
    );
  }
}
