import 'package:block_counter/presentation/controller/block/block_event.dart';
import 'package:block_counter/presentation/controller/block/block_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlock extends Bloc<CounterEvents, CounterState> {
  CounterBlock() : super(InitState()) {
    on<IncreaseEvents>((events, emmit) {
      emmit(CounterState(counterState: state.counterState + 1));
    });
    on<DecreaseEvent>((event, emit) {
      emit(CounterState(counterState: state.counterState - 1));
    });
  }
}
