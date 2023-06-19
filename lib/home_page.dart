import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color_generator/bloc/generate_color_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GenerateColorBloc(),
      child: BlocBuilder<GenerateColorBloc, GenerateColorState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () => context.read<GenerateColorBloc>().add(
                  const GenerateColorEvent.generateColor(),
                ),
            onLongPress: () {
              Clipboard.setData(
                ClipboardData(
                  text: '''argb(${state.alpha}, ${state.red}, ${state.green}, ${state.blue})''',
                ),
              ).then(
                (_) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text(
                          '''Copied: argb(${state.alpha}, ${state.red}, ${state.green}, ${state.blue})''',
                        ),
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating,
                        shape: const StadiumBorder(),
                      ),
                    );
                },
              );
            },
            child: Scaffold(
              backgroundColor: Color.fromARGB(
                state.alpha,
                state.red,
                state.green,
                state.blue,
              ),
              body: Center(
                child: Text(
                  'Hello there',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
