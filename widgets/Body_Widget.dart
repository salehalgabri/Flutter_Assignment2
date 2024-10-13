import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/Custom_Card.dart';

class CustomBody extends StatelessWidget {
  CustomBody({super.key});
  final List<String> titles = [
    'Text',
    'Container',
    'Row',
    'Padding',
    'SingleChildScrollView',
    'ListView',
    'ListView.builder',
    'Expanded',
    'ListTile',
    'Image',
    'Image',
    'IconButton',
    'TextButton',
    'MaterialButton',
    'ElevatedButton',
    'stack',
    'ClipRect',
    'AppBar',
    'Drawer',
    'Icon'
  ];
  @override
  Widget build(BuildContext context) {
    print(titles.length);
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: (titles.length )-1 ,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomCard(
                        title: titles[i],
                      ),
                    ),
                    Expanded(
                      child: CustomCard(
                        title: titles[i + 1],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
