import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DummyPage
 extends StatelessWidget {
  const DummyPage
  ({super.key});

  static const routeName = '/dummy_page';


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Dummy"),),
      body: const Center(
        child: Text('Dummy'),
      ),
    );
  }
}