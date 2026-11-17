import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return [
      const Movie(
        id: 'the-matrix',
        title: 'The Matrix (1999)',
        synopsis:
            'Set in the 22nd century, The Matrix tells the story of a computer hacker who joins a group of underground insurgents fighting the vast and powerful computers who now rule the earth.',
        ageRating: '15',
        screeningTime: 'Thursday 19 Nov 2026, 18:00',
        posterImagePath: 'assets/images/the_matrix.png',
        ticketPrice: 10.10,
      ),
      const Movie(
        id: 'resident-evil',
        title: 'Resident Evil (2026)',
        synopsis:
            'Medical courier Bryan unwittingly finds himself fighting for survival as one fateful, horrifying night collapses around him in chaos.',
        ageRating: '15',
        screeningTime: 'Friday 20 Nov 2026, 20:30',
        posterImagePath: 'assets/images/resident_evil.png',
        ticketPrice: 16.66,
      ),
      const Movie(
        id: 'forrest-gump',
        title: 'Forrest Gump (1994)',
        synopsis:
            'A man with a low IQ has accomplished great things in his life and been present during significant historic events—in each case, far exceeding what anyone imagined he could do. But despite all he has achieved, his one true love eludes him.',
        ageRating: '12',
        screeningTime: 'Saturday 21 Nov 2026, 15:00',
        posterImagePath: 'assets/images/forrest_gump.png',
        ticketPrice: 6.00,
      ),
    ];
  }

  Movie? getMovieById(String id) {
    for (final Movie movie in getMovies()) {
      if (movie.id == id) {
        return movie;
      }
    }
    return null;
  }
}
