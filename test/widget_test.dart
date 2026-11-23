import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/views/home_view.dart';

void main() {
  group('App display tests', () {
    testWidgets(
        'App displays HomeView with title, movie cards, and booking buttons',
        (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.byType(HomeView), findsOneWidget);
      expect(find.text(appTitle), findsOneWidget);
      expect(find.byType(ListView), findsOneWidget);
      expect(find.text('The Matrix (1999)'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsNWidgets(3));
    });
  });
}
