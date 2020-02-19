import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc/src/bloc/counter_bloc.dart';
import 'package:simple_bloc/src/ui/couter_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Pattern',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        //sink point for stream
        body: BlocProvider(
          builder: (BuildContext context) => CounterBloc(),
          child: CounterApp(),
        ),
      ),
    );
  }
}
