import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color_generator/general_export.dart';

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
          final AppColorModel curentColor = state.color;

          return GestureDetector(
            onTap: () => context.read<GenerateColorBloc>().add(
                  const GenerateColorEvent.generateColor(),
                ),
            onLongPress: () {
              _copyColorToClipboard(color: curentColor);
            },
            child: Scaffold(
              backgroundColor: Color.fromARGB(
                curentColor.alpha,
                curentColor.red,
                curentColor.green,
                curentColor.blue,
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

  Future<void> _copyColorToClipboard({required AppColorModel color}) async {
    await Clipboard.setData(
      ClipboardData(
        text: '''argb(${color.alpha}, ${color.red}, ${color.green}, ${color.blue})''',
      ),
    ).then(
      (_) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(
                '''Copied: argb(${color.alpha}, ${color.red}, ${color.green}, ${color.blue})''',
              ),
              backgroundColor: Colors.green,
              behavior: SnackBarBehavior.floating,
              shape: const StadiumBorder(),
            ),
          );
      },
    );
  }
}
