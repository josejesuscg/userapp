import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:users_app/models/user_model.dart';
import 'package:users_app/providers/user_provider.dart';
class UserWidget extends StatefulWidget {
  final UserModel users;
   const UserWidget({super.key, required this.users});

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        // height: ,
        // color: Colors.blue,
        decoration: BoxDecoration(
          color: Colors.black54,
          // border: ,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nombre: ${widget.users.name}', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  const Divider(),
                  Text('Email: ${widget.users.email}', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  const Divider(),
                  Text('Ciudad: ${widget.users.address!.city}', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  const Divider(),
                  Text('Empresa: ${widget.users.company!.name}', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                ],
              ),
              GestureDetector(
                onTap: () async {
                  
                  final ImagePicker _picker = ImagePicker();
                  XFile? _pickedFile = await _picker.pickImage(source: ImageSource.gallery);
                  widget.users.image = _pickedFile!.path;
                  
                  setState(() {});
                  
                },
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  backgroundImage: widget.users.image == null
                   ? const AssetImage('assets/avatar.png')
                   :Image.file(File(widget.users.image!)).image
                  ,
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}