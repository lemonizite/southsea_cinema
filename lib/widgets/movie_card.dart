import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(
                  movie.posterImagePath,
                  width: 80,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 32,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          movie.title,
                          style: cardHeaderStyle,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          movie.ageRating,
                          style: cardBodyStyle,
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              movie.synopsis,
                              style: cardBodyStyle,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                          ],
                        )),
                    Text(
                      'Screening: ${movie.screeningTime}',
                      style: cardBodyStyle,
                    ),
                  ],
                )),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              style: movieAddOrderButtonStyle,
              onPressed: () => print('Booking: ${movie.title}'),
              child: const Text('ADD TO ORDER'),
            ),
          ],
        ),
      ),
    );
  }
}
