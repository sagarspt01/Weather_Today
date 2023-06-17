import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weathertoday/main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool whenON = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          (whenON4) ? Colors.deepPurple[100] : Color.fromARGB(100, 11, 12, 30),
      body: Center(
        child: Text("Profile Page",style: GoogleFonts.lato(
                          fontSize: 40,
                          color:(whenON4)? Colors.black:Colors.white,
                          fontWeight: FontWeight.bold),),
      ),
    );
  }
}
