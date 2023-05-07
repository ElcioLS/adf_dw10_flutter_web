import 'package:flutter/material.dart';

import '../../core/env/env.dart';
import '../../core/ui/helpers/loader.dart';
import '../../core/ui/helpers/messages.dart';
import '../../core/ui/helpers/size_extensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showLoader();
          await Future.delayed(const Duration(seconds: 5));
          hideLoader();
          // showError('Erro qualquer');
          showWarning('atenção');
        },
      ),
      body: Column(
        children: [
          Text(
            Env.instance.get('backend_base_url'),
          ),
          Text(
            context.screenWidget.toString(),
          ),
          Container(
            color: Colors.red,
            width: context.percentWidth(.5),
            height: context.percentHeight(.3),
          )
        ],
      ),
    );
  }
}
