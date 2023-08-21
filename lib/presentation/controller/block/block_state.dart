 class CounterState {
  int counterState;
  CounterState({required this.counterState});
}

class InitState extends CounterState {
  InitState() : super(counterState: -2);
}
