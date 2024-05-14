import 'package:flutter/material.dart';
import 'package:uassmt6/movie_card.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({Key? key}) : super(key: key);

  // var film1 = Container(
  //   height: 200,
  //   margin: EdgeInsets.only(bottom: 20),
  //   color: Colors.black,
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
  //     crossAxisAlignment: CrossAxisAlignment.end,
  //     children: [
  //       Container(
  //         width: 100,
  //         height: 50,
  //         color: Colors.red,
  //         child: Center(
  //           child: Text(
  //             'Judul ',
  //             style: TextStyle(fontSize: 14, color: Colors.white),
  //           ),
  //         ),
  //       ),
  //       Container(
  //         width: 100,
  //         height: 50,
  //         color: Colors.red,
  //         child: Center(
  //           child: Text(
  //             'Rating',
  //             style: TextStyle(fontSize: 24, color: Colors.white),
  //           ),
  //         ),
  //       ),
  //       Container(
  //         width: 100,
  //         height: 50,
  //         color: Colors.red,
  //         child: Center(
  //           child: Text(
  //             'Genre',
  //             style: TextStyle(fontSize: 24, color: Colors.white),
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  // );

  // var film2 = Container(
  //   height: 200,
  //   margin: EdgeInsets.only(bottom: 20),
  //   color: Colors.black,
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
  //     crossAxisAlignment: CrossAxisAlignment.end,
  //     children: [
  //       Container(
  //         width: 100,
  //         height: 50,
  //         color: Colors.red,
  //         child: Center(
  //           child: Text(
  //             'Judul ',
  //             style: TextStyle(fontSize: 14, color: Colors.white),
  //           ),
  //         ),
  //       ),
  //       Container(
  //         width: 100,
  //         height: 50,
  //         color: Colors.red,
  //         child: Center(
  //           child: Text(
  //             'Rating',
  //             style: TextStyle(fontSize: 24, color: Colors.white),
  //           ),
  //         ),
  //       ),
  //       Container(
  //         width: 100,
  //         height: 50,
  //         color: Colors.red,
  //         child: Center(
  //           child: Text(
  //             'Genre',
  //             style: TextStyle(fontSize: 24, color: Colors.white),
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Daftar Film',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(height: 20),
            MovieCard(
              title: 'Film 1',
              director: 'Sutradara 1',
              imageUrl: 'https://example.com/image1.jpg',
            ),
            MovieCard(
              title: 'Film 2',
              director: 'Sutradara 2',
              imageUrl: 'https://example.com/image2.jpg',
            ),
            MovieCard(
              title: 'Film 3',
              director: 'Sutradara 3',
              imageUrl: 'https://example.com/image3.jpg',
            ),
            // Add more MovieCard widgets for additional movies
          ],
        ),
      ),
    );
  }
  // var personalInfo = Container(
  //   margin: EdgeInsets.only(top: 100, left: 60, right: 60),
  //   child: Column(
  //     children: [
  //       Row(
  //         children: [
  //           Icon(
  //             Icons.person_4_outlined,
  //             color: Colors.amber[400],
  //             size: 24,
  //           ),
  //           SizedBox(
  //             width: 10,
  //           ),
  //           Text(
  //             'Administrator',
  //             style: TextStyle(fontSize: 14),
  //           )
  //         ],
  //       ),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Row(
  //         children: [
  //           Icon(
  //             Icons.location_on,
  //             color: Colors.amber[400],
  //             size: 24,
  //           ),
  //           SizedBox(
  //             width: 10,
  //           ),
  //           Text(
  //             'Jl. Ambarita No.12, Bekasi',
  //             style: TextStyle(fontSize: 14),
  //           )
  //         ],
  //       ),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Row(
  //         children: [
  //           Icon(
  //             Icons.email_rounded,
  //             color: Colors.amber[400],
  //             size: 24,
  //           ),
  //           SizedBox(
  //             width: 10,
  //           ),
  //           Text(
  //             'taufanihdyt11@gmail.com',
  //             style: TextStyle(fontSize: 14),
  //           )
  //         ],
  //       ),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Row(
  //         children: [
  //           Icon(
  //             Icons.phone_android,
  //             color: Colors.amber[400],
  //             size: 24,
  //           ),
  //           SizedBox(
  //             width: 10,
  //           ),
  //           Text(
  //             '0892242546477',
  //             style: TextStyle(fontSize: 14),
  //           )
  //         ],
  //       ),
  //       SizedBox(
  //         height: 60,
  //       ),
  //       Container(
  //         width: 200,
  //         child: ElevatedButton(
  //           onPressed: () {},
  //           child: Text('Edit Profile',
  //               style: TextStyle(
  //                   color: Colors.amber[600], fontWeight: FontWeight.bold)),
  //           style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
  //         ),
  //       )
  //     ],
  //   ),
  // );
}
