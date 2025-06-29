import 'package:flutter/material.dart';

Widget CustomChatTile(color, title, msg, icon, time,context) {
  return ListTile(
    
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/images/images.png'),
    ),
    title: Text(
      "$title",
      style: TextStyle(color: Colors.white),
    ),
    subtitle: Text(
      "$msg",
      style: TextStyle(color: Colors.white),
    ),
    tileColor: const Color.fromARGB(255, 15, 14, 14),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("$time"),
        SizedBox(
          width: 20,
        ),
        Icon(icon),
      ],
    ),
  );
}