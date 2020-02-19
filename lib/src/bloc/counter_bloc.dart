import 'package:bloc/bloc.dart';

enum CounterEvents { increment, decrement }

class CounterBloc extends Bloc<CounterEvents, int> {
  @override

  // initial State of the bloc
  int get initialState => 0;

  // This is the stream state ( data ) flows ...
  @override
  Stream<int> mapEventToState(CounterEvents event) async* {
    switch (event) {
      case CounterEvents.increment:
        yield state + 1;
        break;
      case CounterEvents.decrement:
        yield state - 1;
        break;
    }
  }
}
