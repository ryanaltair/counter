import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:counter/presentation/screens/home_screen.dart';
import 'package:counter/presentation/screens/second_screen.dart';
import 'package:counter/presentation/screens/third_screen.dart';
import 'logic/cubit/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterCubit _counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Main App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          '/': (context) => BlocProvider.value(
                value: _counterCubit,
                child:
                    const HomeScreen(title: 'home', color: Colors.blueAccent),
              ),
          '/second': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const SecondScreen(
                    title: 'second', color: Colors.redAccent),
              ),
          '/third': (context) => BlocProvider.value(
                value: _counterCubit,
                child:
                    const ThirdScreen(title: 'home', color: Colors.greenAccent),
              )
        },
      ),
    );
  }
}
