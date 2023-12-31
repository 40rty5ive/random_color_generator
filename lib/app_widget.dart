import 'package:flutter/material.dart';
import 'package:random_color_generator/general_export.dart';

/// {@template app}
/// The root widget of the application.
///
/// Contains [MaterialApp].
/// {@endtemplate}
class AppWidget extends StatelessWidget {
  /// {@macro app}
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Color Generator',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
