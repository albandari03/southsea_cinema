import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'DEMON SLAYER: INFINITY CASTLE (15)',
              style: TextStyle(color: cinemaFontWhite, fontSize: 24),
            ),
            const SizedBox(height: 12),
            const Text(
              'Runtime: 155 mins',
              style: TextStyle(color: cinemaFontWhite, fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              'Tanjiro and the Demon Slayer Corps are pulled into '
              'the Infinity Castle for their final battle against Muzan.',
              style: TextStyle(color: cinemaFontWhite, fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              'Sunday 19 Oct 2026',
              style: TextStyle(color: cinemaFontWhite, fontSize: 16),
            ),
            const SizedBox(height: 16),
            // Dropdown goes here
            ElevatedButton(
              onPressed: () {
                print('Add to order button pressed');
              },
              child: const Text('Add to order'),
            ),
          ],
        ),
      ),
    );
  }
}
