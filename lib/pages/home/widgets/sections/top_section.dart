import 'package:flutter/material.dart';

import '../../../../breakpoints.dart';
import '../custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        // Se for web
        if (maxWidth >= 1200) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.2,
                  child: Image.network(
                    'https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8.0,
                    child: Container(
                      width: 400.0,
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: const [
                          Text(
                            'Responsive Flutter',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            'Flutter course for responsiveness in your application.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            'Stay firm in your studies, the fruit will come!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(height: 14.0),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        // Se for tablet
        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320.0,
            child: Stack(
              children: [
                SizedBox(
                  height: 250.0,
                  width: double.infinity,
                  child: Image.network(
                    'https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20.0,
                  top: 20.0,
                  child: Card(
                    color: Colors.black,
                    elevation: 8.0,
                    child: Container(
                      width: 300.0,
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: const [
                          Text(
                            'Responsive Flutter',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            'Flutter course for responsiveness in your application.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            'Stay firm in your studies, the fruit will come!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                          SizedBox(height: 14.0),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        //Se for mobile

        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network(
                'https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Responsive Flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    'Flutter course for responsiveness in your application.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    'Stay firm in your studies, the fruit will come!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  CustomSearchField(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
