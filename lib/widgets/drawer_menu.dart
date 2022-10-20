import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          const _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text('Home'),
            onTap: (){
               Navigator.pushNamed(context, '/HomeScreen');
            },
          ),
           ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: (){
              Navigator.pushNamed(context, '/SettingsScreen');
            },
          )
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      // ignore: sort_child_properties_last
      child: UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          color: Colors.black45
        ),
        accountEmail: Text('josejesuscg08@gmail.com', style: TextStyle(fontWeight: FontWeight.bold),),
        accountName: Text('Jose Cova'),
        currentAccountPictureSize: Size.square(45),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text("J", style: TextStyle(fontSize: 30.0, color: Colors.black),), //Text
        ), //circleAvatar
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/ant-pack-logo.png'),
          fit: BoxFit.fill
          )
      ),
    );
  }
}