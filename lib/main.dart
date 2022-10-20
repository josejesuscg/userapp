import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:users_app/providers/config/providers.dart';
import 'package:users_app/routegenerator.dart';
import 'package:users_app/screen/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: getProviderList(),
      child: MaterialApp(
        title: 'Users Ant Pack',
        home:  const HomeScreen(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoute,
        theme: ThemeData.dark(),
      ),
    );
  }
}