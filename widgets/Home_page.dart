import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/Body_Widget.dart';
import 'package:flutter_application_2/widgets/Custom_ListTile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> titles = [
    'Home',
    'Login',
    'New',
    'Settings',
    'About',
    'Logout'
  ];
  final List<IconData> icons = [
    Icons.home,
    Icons.lock,
    Icons.add,
    Icons.settings,
    Icons.person_add,
    Icons.help,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue[400],
        title: const ListTile(
          title: Text(
            'Home Screen',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: const EdgeInsets.all(0),
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset('assets/logo.jpeg')),
                title: const Text(
                  "Saleh",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: const Text('s96557867@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: titles.length,
                    itemBuilder: (context, index) {
                      return CustomLisTile(
                        title: titles[index],
                        leading: Icon(icons[index]),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body:  CustomBody(),
    );
  }
}
