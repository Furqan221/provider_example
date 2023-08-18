import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exp/provider/counter_provider.dart';
import 'package:provider_exp/provider/slider_provider.dart';
import 'package:provider_exp/screens/counter_screen.dart';
import 'package:provider_exp/screens/index_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
      create: (context) => CounterProvider()),
        ChangeNotifierProvider(
      create: (context) => SliderProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 183, 183)),
          useMaterial3: true,
        ),
        home: const IndexScreen(),
      ),
    );
  }
}
