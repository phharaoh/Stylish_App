sealed class CounterState {
  final int count;

  CounterState(this.count);
}

class CounterInitState extends CounterState {
  CounterInitState() : super(1);
}

class CounterUpdateState extends CounterState {
  CounterUpdateState(super.count);
}
