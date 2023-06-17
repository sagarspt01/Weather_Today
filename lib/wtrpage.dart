import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

class WtrPage extends StatefulWidget {
  const WtrPage({super.key});

  @override
  State<WtrPage> createState() => _WtrPageState();
}

class _WtrPageState extends State<WtrPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          (whenON) ? Colors.deepPurple[100] : Color.fromARGB(100, 11, 12, 30),
         
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: (whenON)
                  ? Text(
                      "Today's Report",
                      style: GoogleFonts.lato(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  : Text("Today's Report",
                      style: GoogleFonts.lato(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                      height: 250,
                      width: 250,
                      child: Image.asset("assets/def.png")),
                  (whenON)
                      ? Text(
                          "Its Cloudy",
                          style: GoogleFonts.lato(
                              fontSize: 20, color: Colors.black),
                        )
                      : Text(
                          "Its Cloudy",
                          style: GoogleFonts.lato(
                              fontSize: 20, color: Colors.white),
                        ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      (whenON)
                          ? Text(
                              "$temp",
                              style: GoogleFonts.lato(
                                  fontSize: 60, color: Colors.black),
                            )
                          : Text(
                              "$temp",
                              style: GoogleFonts.lato(
                                  fontSize: 60, color: Colors.white),
                            ),
                      (whenON)
                          ? Text(
                              "°",
                              style: GoogleFonts.lato(
                                  fontSize: 80, color: Colors.deepPurple),
                            )
                          : Text(
                              "°",
                              style: GoogleFonts.lato(
                                  fontSize: 80, color: Colors.blue),
                            ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 150,
                          width: 70,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/ghi.png",
                                fit: BoxFit.cover,
                              ),
                              (whenON)
                                  ? Text(
                                      "23km/h",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.black),
                                    )
                                  : Text(
                                      "23km/h",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.white),
                                    ),
                              (whenON)
                                  ? Text(
                                      "Sun",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.black),
                                    )
                                  : Text(
                                      "Sun",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.white),
                                    ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 80,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/jkl.png",
                                fit: BoxFit.cover,
                              ),
                              (whenON)
                                  ? Text(
                                      "30%",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.black),
                                    )
                                  : Text(
                                      "30%",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.white),
                                    ),
                              (whenON)
                                  ? Text(
                                      "Humidity",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.black),
                                    )
                                  : Text(
                                      "Humidity",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.white),
                                    ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 70,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/mno.png",
                                fit: BoxFit.cover,
                              ),
                              (whenON)
                                  ? Text(
                                      "23km/h",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.black),
                                    )
                                  : Text(
                                      "23km/h",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.white),
                                    ),
                              (whenON)
                                  ? Text(
                                      "Chance of",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.black),
                                    )
                                  : Text(
                                      "Chance of",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.white),
                                    ),
                              (whenON)
                                  ? Text(
                                      "rain",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.black),
                                    )
                                  : Text(
                                      "rain",
                                      style: GoogleFonts.lato(
                                          fontSize: 15, color: Colors.white),
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
