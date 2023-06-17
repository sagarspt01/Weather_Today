import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weathertoday/bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 11, 12, 30),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset(
              "assets/abc.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 40,
            ),
            Text("Discover the Weather",
                style: GoogleFonts.lato(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text("in Your City",
                style: GoogleFonts.lato(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(
              height: 40,
            ),
            Text("Get to know your weather maps and",
                style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text(
              "radar precipitation forecast",
              style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Colors.white),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BarPage()),
                );
              },
              child: Container(
                height: 70,
                width: 300,
                child: Center(
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.lato(
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
