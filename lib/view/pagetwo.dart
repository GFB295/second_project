import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_provider/model/countmodel.dart';

class Pagetwo extends StatelessWidget {
  const Pagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Text(
                'Nouvelle valeur = ${context.watch<Countmodel>().count}',
                 style: TextStyle(fontSize: 30),
            ),
          ),
        ),
    );
  }
}
