import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_provider/model/countmodel.dart';
import 'package:tp_provider/view/pagetwo.dart';

class Pageone extends StatelessWidget {
  const Pageone({super.key});

  @override
  Widget build(BuildContext context) {
    final countmodel = Provider.of<Countmodel>(context);
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Compteur',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            Text(
              '${countmodel.count}',
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: countmodel.increment,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(120, 50)
                  ),
                  child: const Icon(Icons.add,size: 30,color: Colors.white),
                ),
                SizedBox(width: 20),

                ElevatedButton(onPressed: countmodel.decrement,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: Size(120, 50)
                  ),
                  child: const Icon(Icons.remove, size: 30,color: Colors.white),
                ),

              ],
            ),
            SizedBox(height: 20),
            TextButton(onPressed: countmodel.reset, child: Text('Reset',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold))),
          ],
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.all(20),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => Pagetwo()),
                );
              },

            ),
        ),
      ),
    );





  }








}