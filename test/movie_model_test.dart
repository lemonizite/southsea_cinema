import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('MOVIE MODEL TESTS', () {
    test('create Movie instance w/ given properties', () {
      const movie = Movie(
        id: '4',
        title: 'Garfield',
        synopsis:
            'Garfield, the fat, lazy, lasagna lover, has everything a cat could want. But when Jon, in an effort to impress the Liz - the vet and an old high-school crush - adopts a dog named Odie and brings him home, Garfield gets the one thing he doesn\'t want. Competition.',
        ageRating: 'U',
        screeningTime: 'Friday 13 Nov 2026, 20:04',
        posterImagePath: 'assets/images/garfield.png',
        ticketPrice: 20.04,
      );
      expect(movie.id, '4');
      expect(movie.title, 'Garfield');
      expect(movie.synopsis,
          'Garfield, the fat, lazy, lasagna lover, has everything a cat could want. But when Jon, in an effort to impress the Liz - the vet and an old high-school crush - adopts a dog named Odie and brings him home, Garfield gets the one thing he doesn\'t want. Competition.');
      expect(movie.ageRating, 'U');
      expect(movie.screeningTime, 'Friday 13 Nov 2026, 20:04');
      expect(movie.posterImagePath, 'assets/images/garfield.png');
      expect(movie.ticketPrice, 20.04);
    });
    test('formattedPrice formats whole pound price w/ two decimals', () {
      const movie = Movie(
        id: '4',
        title: 'Garfield',
        synopsis:
            'Garfield, the fat, lazy, lasagna lover, has everything a cat could want. But when Jon, in an effort to impress the Liz - the vet and an old high-school crush - adopts a dog named Odie and brings him home, Garfield gets the one thing he doesn\'t want. Competition.',
        ageRating: 'U',
        screeningTime: 'Friday 13 Nov 2026, 20:04',
        posterImagePath: 'assets/images/garfield.png',
        ticketPrice: 0.00,
      );
      expect(movie.formattedPrice, '£0.00');
    });
    test('formattedPrice formats price with pence', () {
      const movie = Movie(
        id: '4',
        title: 'Garfield',
        synopsis:
            'Garfield, the fat, lazy, lasagna lover, has everything a cat could want. But when Jon, in an effort to impress the Liz - the vet and an old high-school crush - adopts a dog named Odie and brings him home, Garfield gets the one thing he doesn\'t want. Competition.',
        ageRating: 'U',
        screeningTime: 'Friday 13 Nov 2026, 20:04',
        posterImagePath: 'assets/images/garfield.png',
        ticketPrice: 3.33,
      );
      expect(movie.formattedPrice, '£3.33');
    });
  });
}
