import 'package:bloc_test/bloc_test.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:random_color_generator/general_export.dart';

import 'mock_clipboard.dart';

class MockCounterBloc extends MockBloc<GenerateColorEvent, GenerateColorState>
    implements GenerateColorBloc {}

class MockStorage extends Mock implements Storage {}

void main() {
  late Storage storage;

  setUp(() {
    storage = MockStorage();
    when(
      () => storage.write(any(), any<dynamic>()),
    ).thenAnswer((invocation) async {
      return;
    });

    final MockClipboard mockClipboard = MockClipboard();
    TestWidgetsFlutterBinding.ensureInitialized()
        .defaultBinaryMessenger
        .setMockMethodCallHandler(
          SystemChannels.platform,
          mockClipboard.handleMethodCall,
        );

    HydratedBloc.storage = storage;
    Bloc.observer = AppBlocObserver();
  });

  group('Widgets tests', () {
    testWidgets('Test dispaly text', (WidgetTester tester) async {
      await tester.pumpWidget(const AppWidget());

      expect(find.byType(RichText), findsOneWidget);

      await tester.tap(find.byType(RichText));

      await tester.longPress(find.byType(RichText));
    });

    testWidgets('Test showing SnackBar', (WidgetTester tester) async {
      const String helloSnackBar = 'Copied: ';
      const Key tapTarget = Key('tap-target');
      await tester.pumpWidget(
        const AppWidget(
          key: tapTarget,
        ),
      );
      expect(find.text(helloSnackBar), findsNothing);
      await tester.longPress(find.byKey(tapTarget));
      await tester.pump();
      expect(find.textContaining(helloSnackBar), findsOneWidget);
    });
  });

  group('Platform chanels tests', () {
    testWidgets('Test Clipboard', (WidgetTester tester) async {
      await tester.pumpWidget(const AppWidget());

      expect(find.byType(RichText), findsOneWidget);

      ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);

      expect(data, isNull);

      await tester.longPress(find.byType(RichText));

      data = await Clipboard.getData(Clipboard.kTextPlain);

      expect(data, isNotNull);
    });
  });

  group('Bloc tests', () {
    blocTest(
      'Cneck bloc state type',
      build: () => GenerateColorBloc(),
      seed: () => GenerateColorState(
        backfroundColor: AppColorModel.random(),
        textColorsList: List.generate(
          GenerateColorBloc.defauldeWord.length,
          (index) => AppColorModel.random(),
        ),
      ),
      act: (bloc) => bloc.add(const GenerateColorEvent.generateColor()),
      expect: () => [isA<GenerateColorState>()],
    );
  });
}
