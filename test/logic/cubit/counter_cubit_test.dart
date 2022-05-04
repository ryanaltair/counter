import 'package:bloc_test/bloc_test.dart';
import 'package:counter/logic/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    late CounterCubit counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });
    tearDown(() {
      counterCubit.close();
    });
    test('initial state of CounterCubit is CounterState(counterValue:0)', () {
      expect(counterCubit.state, const CounterState(counterValue: 0));
    });
    blocTest(
        'the CounterCubit should emit a CounterState(counterValue:1, wasIncremented:true) when the increment function is called',
        build: () => counterCubit,
        act: (CounterCubit cubit) => cubit.increment(),
        expect: () =>
            [const CounterState(counterValue: 1, wasIncremented: true)]);
    blocTest('decrement',
        build: () => counterCubit,
        act: (CounterCubit cubit) => cubit.decrement(),
        expect: () =>
            [const CounterState(counterValue: -1, wasIncremented: false)]);
  });
}
