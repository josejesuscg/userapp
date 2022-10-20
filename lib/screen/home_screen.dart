
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:users_app/providers/user_provider.dart';
import 'package:users_app/widgets/drawer_menu.dart';

import '../widgets/user_widget.dart';
class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
void initState() {
  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    UserProvider userProvider = Provider.of<UserProvider>(context, listen: false);
    if(userProvider.userList.isEmpty) {
      userProvider.getUsers();
    }
    

  });
  super.initState();
  
}
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ant Pack Users'),
        centerTitle: true,
      ),
      drawer: const DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: userProvider.userList.length,
                itemBuilder: (context, index) {
                  // print(userProvider.userList.length);
                  return UserWidget(
                    users: userProvider.userList.elementAt(index),
                  );
                  
                }),
      )
    );
  }
}