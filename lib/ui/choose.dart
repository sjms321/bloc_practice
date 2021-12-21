import 'package:bloc_practice/ui/frame.dart';
import 'package:flutter/material.dart';

class choose extends StatelessWidget {
  const choose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: const Text("bloc_basic"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => frame()));
                }),
            ElevatedButton(child: const Text("bloc_libary"), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
