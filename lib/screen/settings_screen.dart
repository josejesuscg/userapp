import 'package:flutter/material.dart';

import '../widgets/drawer_menu.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ant Pack Users'),
        centerTitle: true,
      ),
      drawer: const DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Settings', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              Icon(Icons.settings, size: 30,)
            ],
          ),
        )
      )
    );
  }
}