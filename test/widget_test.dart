import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:random_color_generator/general_export.dart';

import 'mock_clipboard.dart';

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

  testWidgets('Test dispaly text', (WidgetTester tester) async {
    await tester.pumpWidget(const AppWidget());

    expect(find.text('Hello there'), findsOneWidget);

    await tester.tap(find.text('Hello there'));

    await tester.longPress(find.text('Hello there'));
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

  testWidgets('Test Clipboard', (WidgetTester tester) async {
    await tester.pumpWidget(const AppWidget());

    expect(find.text('Hello there'), findsOneWidget);

    ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);

    expect(data, isNull);

    await tester.longPress(find.text('Hello there'));

    data = await Clipboard.getData(Clipboard.kTextPlain);

    expect(data, isNotNull);
  });
}
