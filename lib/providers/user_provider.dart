import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:users_app/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserProvider extends ChangeNotifier {
  List<UserModel> userList = [];
  UserModel user = UserModel();
  String? imagePath;


  Future<UserModel?> getUsers() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    if(response.statusCode == 200){

      for (var u in data) {
        UserModel user = UserModel.fromJson(u);
        userList.add(user);
      }
      notifyListeners();
      
      
    }
    return user;
    
  }
}