import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/views/home_view.dart';
import 'package:southsea_cinema/views/movie_listing.dart';

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
    testWidgets(
        'tapping a booking button opens MovieListing with selected film',
        (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());
      await tester.tap(find.text('ADD TO ORDER').first);
      await tester.pumpAndSettle();

      expect(find.byType(MovieListing), findsOneWidget);
      expect(find.text('The Matrix (1999)'), findsOneWidget);

      // here tap the booking button on this MovieListing page, check feedback
      await tester.tap(find.text('ADD TO ORDER').first);
      await tester.pump();

      expect(find.text('Added 1 tickets to order.'), findsOneWidget);

      // test second movie
      Navigator.of(tester.element(find.byType(MovieListing))).pop();
      await tester.pumpAndSettle();
      await tester.tap(find.text('ADD TO ORDER').at(1));
      await tester.pumpAndSettle();

      expect(find.text('Resident Evil (2026)'), findsOneWidget);
      expect(find.text(''), findsOneWidget);

      await tester.tap(find.text('ADD TO ORDER').first);
      await tester.pump();

      expect(find.text('Added 1 tickets to order.'), findsOneWidget);
    });
  });
}
