import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weathertoday/main.dart';


class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  bool whenON=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          (whenON3) ? Colors.deepPurple[100] : Color.fromARGB(100, 11, 12, 30),
      body: Center(
        child: Text("Explore Page",style: GoogleFonts.lato(
                          fontSize: 40,
                          color:(whenON3)? Colors.black:Colors.white,
                          fontWeight: FontWeight.bold),),
      ),
    );
  }
}