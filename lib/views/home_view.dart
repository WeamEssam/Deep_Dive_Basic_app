import 'package:flutter/material.dart';

import '../widgets/data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Color appBarColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 3', style: TextStyle(color: appBarColor)),
        iconTheme: IconThemeData(color: appBarColor),
      ),

      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.7,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/food_drawer.jpg'),
                  fit: BoxFit.cover,
                ),
              ),

              child: Text('Menu', style: TextStyle(fontSize: 22)),
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: const Text('humburger'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: const Text('fries'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.local_pizza_outlined),
              title: const Text('pizza'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.donut_small),
              title: const Text('donut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: DataWidget(
        appBarColor: appBarColor,
        onColorChanged: (newColor) {
          setState(() {
            appBarColor = newColor;
          });
        },
      ),
    );
  }
}
