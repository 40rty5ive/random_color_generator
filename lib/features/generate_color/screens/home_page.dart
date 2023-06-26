import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color_generator/general_export.dart';

/// {@template home_page}
/// Home page of the application
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({super.key});

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
              _copyColorToClipboard(color: curentColor, context: context);
            },
            child: Scaffold(
              backgroundColor: curentColor.toMaterialColor(),
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

  Future<void> _copyColorToClipboard({
    required AppColorModel color,
    required BuildContext context,
  }) async {
    final formatedColor = color.formatToString();
    await Clipboard.setData(
      ClipboardData(
        text: formatedColor,
      ),
    ).then(
      (_) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(
                'Copied: $formatedColor',
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
