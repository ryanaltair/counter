part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int counterValue;
  final bool wasIncremented;
  const CounterState({
    required this.counterValue,
    this.wasIncremented = true,
  });

  @override
  List<Object?> get props => [counterValue, wasIncremented];
}
