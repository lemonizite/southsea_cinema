import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('REPOSITORY UNIT TESTS', () {
    test('getMovies returns correct num. of stored values', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      expect(movies.length, 3);
    });
    test('getMovieById returns correct movie', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      final Movie the_matrix = movies[0];
      expect(the_matrix.id, 'the-matrix');
      expect(the_matrix.title, 'The Matrix (1999)');
      expect(
        the_matrix.synopsis,
        'Set in the 22nd century, The Matrix tells the story of a computer hacker who joins a group of underground insurgents fighting the vast and powerful computers who now rule the earth.',
      );
      expect(the_matrix.ageRating, '15');
      expect(the_matrix.screeningTime, 'Thursday 19 Nov 2026, 18:00');
      expect(the_matrix.posterImagePath, 'assets/images/the_matrix.png');
      expect(the_matrix.ticketPrice, 10.10);

      final Movie resident_evil = movies[1];
      expect(resident_evil.id, 'resident-evil');
      expect(resident_evil.title, 'Resident Evil (2026)');
      expect(resident_evil.synopsis,
          'Medical courier Bryan unwittingly finds himself fighting for survival as one fateful, horrifying night collapses around him in chaos.');
      expect(resident_evil.ageRating, '15');
      expect(resident_evil.screeningTime, 'Friday 20 Nov 2026, 20:30');
      expect(resident_evil.posterImagePath, 'assets/images/resident_evil.png');
      expect(resident_evil.ticketPrice, 16.66);

      final Movie forrest_gump = movies[2];
      expect(forrest_gump.id, 'forrest-gump');
      expect(forrest_gump.title, 'Forrest Gump (1994)');
      expect(forrest_gump.synopsis,
          'A man with a low IQ has accomplished great things in his life and been present during significant historic events—in each case, far exceeding what anyone imagined he could do. But despite all he has achieved, his one true love eludes him.');
      expect(forrest_gump.ageRating, '12');
      expect(forrest_gump.screeningTime, 'Saturday 21 Nov 2026, 15:00');
      expect(forrest_gump.posterImagePath, 'assets/images/forrest_gump.png');
      expect(forrest_gump.ticketPrice, 6.00);
    });
  });
}
