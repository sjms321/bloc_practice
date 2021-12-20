import 'package:bloc_practice/bloc/count_bloc.dart';
import 'package:bloc_practice/components/count_view.dart';
import 'package:flutter/material.dart';

late CountBloc countBloc;

class frame extends StatefulWidget {
  frame({Key? key}) : super(key: key);

  @override
  _frameState createState() => _frameState();
}

// ignore: camel_case_types
class _frameState extends State<frame> {
  @override
  void initState() {
    super.initState();
    countBloc = CountBloc();
  }

  @override
  void dispose() {
    super.dispose();
    countBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bloc pattern examole"),
      ),
      body: const CountView(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {
                countBloc.add();
              },
              icon: const Icon(Icons.add)),
          IconButton(
              onPressed: () {
                countBloc.substract()();
              },
              icon: Icon(Icons.remove)),
        ],
      ),
    );
  }
}
