import 'package:flutter/material.dart';

import './widgets/action_buttons.dart';
import './widgets/user_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Userlist'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActionButtons(),
            UserList(),
          ]),
    );
  }
}
