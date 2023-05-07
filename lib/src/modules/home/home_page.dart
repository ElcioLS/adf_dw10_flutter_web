import 'package:flutter/material.dart';

import '../../code/env/env.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          Text(Env.instance.get('backend_base_url')),
        ],
      ),
    );
  }
}
