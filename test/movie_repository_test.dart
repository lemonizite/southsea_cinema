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
    test('getMovieById returns matching movie', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById('the-matrix');

      expect(movie, isNotNull);
      expect(movie?.id, 'the-matrix');
    });
    test("getMovieById returns null when id does not exist", () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById('garfield');

      expect(movie, isNull);
    });
    test('getMovieById returns correct values', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById('the-matrix');

      expect(movie?.id, 'the-matrix');
      expect(movie?.title, 'The Matrix (1999)');
      expect(
        movie?.synopsis,
        'Set in the 22nd century, The Matrix tells the story of a computer hacker who joins a group of underground insurgents fighting the vast and powerful computers who now rule the earth.',
      );
      expect(movie?.ageRating, '15');
      expect(movie?.screeningTime, 'Thursday 19 Nov 2026, 18:00');
      expect(movie?.posterImagePath, 'assets/images/the_matrix.png');
      expect(movie?.ticketPrice, 10.10);
    });
  });
}
