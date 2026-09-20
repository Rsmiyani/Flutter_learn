import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:app_1/main.dart';
import 'package:app_1/screen/splash_screen.dart';
import 'package:app_1/screen/login_screen.dart';
import 'package:app_1/screen/registaration_screen.dart';

void main() {
  testWidgets('App loads splash and navigates to login', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(SplashScreen), findsOneWidget);

    await tester.pumpAndSettle(const Duration(seconds: 4));
    expect(find.byType(LoginScreen), findsOneWidget);
  });

  testWidgets('RegistrationScreen renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: RegistrationScreen()));
    expect(find.byType(RegistrationScreen), findsOneWidget);
    expect(find.text('Create Account'), findsOneWidget);
    expect(find.text('Register'), findsOneWidget);
  });
}
