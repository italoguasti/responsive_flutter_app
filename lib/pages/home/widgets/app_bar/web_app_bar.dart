import 'package:flutter/material.dart';

import 'web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72.0,
      title: Row(
        children: [
          const Text('Flutter'),
          const SizedBox(width: 32.0),
          const WebAppBarResponsiveContent(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(width: 24.0),
          SizedBox(
            height: 38.0,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white, width: 2),
              ),
              child: const Text(
                'Fazer login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          SizedBox(
            height: 38.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: const Text(
                'Cadastre-se',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
