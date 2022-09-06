import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.local_airport_outlined),
        title: const Text("hello"),
        actions: [Icon(Icons.abc),
        IconButton(onPressed: (){}, icon: Icon(Icons.abc_outlined))
        ],
      ),
    );
  }
}
