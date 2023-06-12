import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://global-uploads.webflow.com/618fa90c201104b94458e1fb/639c3c525c917da45740ab15_Best-Flutter-app-development-tools-and-app-builders_MAin-Image.jpg',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4.0),
        Flexible(
          child: LayoutBuilder(builder: (_, constraints) {
            return const AutoSizeText(
              'Criação de Apps Android e iOS com Flutter - Crie 7 Apps',
              minFontSize: 1.0,
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.white,
              ),
            );
          }),
        ),
        const Text(
          'Italo Guasti',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 4.0),
        const Text(
          'R\$12,25',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
