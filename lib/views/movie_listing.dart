import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() {
    return _MovieListingState();
  }
}

class _MovieListingState extends State<MovieListing> {
  int _ticketQuantity = 1;
  String _bookingMessage = '';

  void _setQuantity(int? value) {
    if(value != null) {
      setState(() => _ticketQuantity = value);
    }
    else {
      throw FormatException('Null value selected!');
    }
  }

  void _setBookingMessage() {
    setState(() => _bookingMessage = 'Added $_ticketQuantity tickets to order.');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'The Matrix (1999)', 
              style: movieHeaderStyle,
            ),
            const SizedBox(height: 5),
            Text(
              'A 1999 science fiction action film directed by the Wachowskis', 
              style: movieBodyStyle,
            ),
            const SizedBox(height: 40),
            DropdownMenu<int>(
              inputDecorationTheme: InputDecorationTheme(
                fillColor: cinemaFontWhite,
                filled: true,
              ),
              textStyle: const TextStyle(color: cinemaBackground),
              menuStyle: MenuStyle(
                backgroundColor: WidgetStateProperty.all(cinemaFontWhite),
              ),
              onSelected: (int? value) => _setQuantity(value),
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 1, label: '1'),
                DropdownMenuEntry(value: 2, label: '2'),
                DropdownMenuEntry(value: 3, label: '3'),
                DropdownMenuEntry(value: 4, label: '4'),
                DropdownMenuEntry(value: 5, label: '5'),
              ],
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: movieAddOrderButtonStyle,
              onPressed: () => _setBookingMessage(), 
              child: const Text('ADD TO ORDER'),
            ),
            const SizedBox(height: 5),
            Text('(Ticket Quantity: $_ticketQuantity)', style: movieBodyStyle),
            const SizedBox(height: 5),
            Text(_bookingMessage, style: movieBodyStyle),
          ],
        ),
      ),
    );
  }
}
