import 'package:bloc_practice/ui/frame.dart';
import 'package:flutter/material.dart';

class CountView extends StatelessWidget {
  const CountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build now");
    return Center(
      child: StreamBuilder(
        stream: countBloc.count,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            return Text(
              snapshot.data.toString(),
              style: const TextStyle(color: Colors.blue),
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
