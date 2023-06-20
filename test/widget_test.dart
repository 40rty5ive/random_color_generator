import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:random_color_generator/general_export.dart';

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
    HydratedBloc.storage = storage;
    Bloc.observer = AppBlocObserver();
  });

  testWidgets('Main test', (WidgetTester tester) async {
    await tester.pumpWidget(const AppWidget());

    expect(find.text('Hello there'), findsOneWidget);

    await tester.tap(find.text('Hello there'));

    await tester.longPress(find.text('Hello there'));
  });
}
