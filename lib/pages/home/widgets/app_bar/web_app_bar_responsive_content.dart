import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          print(
              'biggest ${constraints.biggest} smallest ${constraints.smallest}');

          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 44.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey.shade600),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.search, color: Colors.grey.shade500),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8.0),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise aqui',
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400) ...[
                const SizedBox(width: 30.0),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Aprender',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(width: 8.0),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Flutter',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]
            ],
          );
        },
      ),
    );
  }
}
