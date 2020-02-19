import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc/src/bloc/counter_bloc.dart';

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counterBloc = BlocProvider.of<CounterBloc>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlocBuilder<CounterBloc, int>(
            builder: (BuildContext context, int state) {
              return Text("Counter Value : $state");
            },
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('increment'),
                onPressed: () {
                  _counterBloc.add(CounterEvents.increment);
                },
              ),
              RaisedButton(
                child: Text('descrement'),
                onPressed: () {
                  _counterBloc.add(CounterEvents.decrement);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
