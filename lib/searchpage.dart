import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool whenON = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          (whenON2) ? Colors.deepPurple[100] : Color.fromARGB(100, 11, 12, 30),
      body: Center(
        child: Text("Search Page",style: GoogleFonts.lato(
                          fontSize: 40,
                          color:(whenON2)? Colors.black:Colors.white,
                          fontWeight: FontWeight.bold),),
      ),
    );
  }
}
