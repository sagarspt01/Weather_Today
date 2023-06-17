import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:weathertoday/profilepage.dart';
import 'package:weathertoday/searchpage.dart';
import 'package:weathertoday/wtrpage.dart';
import 'explore.dart';
import 'main.dart';

class BarPage extends StatefulWidget {
  const BarPage({super.key});

  @override
  State<BarPage> createState() => _BarPageState();
}

class _BarPageState extends State<BarPage> with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (whenON)
          ? Colors.deepPurple[100]
          : const Color.fromARGB(255, 22, 23, 41),
      appBar: AppBar(
          backgroundColor: (whenON)
              ? Colors.deepPurple[100]
              : Color.fromARGB(100, 11, 12, 30),
          elevation: 0,
          actions: [
            
            Icon(Icons.location_on_outlined,color: Colors.blue,),
            Center(
              child: DropdownButton<String>(
                dropdownColor: (whenON)
                    ? Colors.deepPurple[300]
                    : const Color.fromARGB(255, 22, 23, 41),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                value: dropdownValue,
                items: items.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                       value,
                      style: (whenON)
                          ? GoogleFonts.lato(fontSize: 20, color: Colors.black)
                          : GoogleFonts.lato(fontSize: 20, color: Colors.white),
                    ),
                  );
                }).toList(),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LiteRollingSwitch(
                value: false,
                textOn: "on",
                textOff: "off",
                colorOn: Color.fromARGB(255, 140, 116, 181),
                colorOff: Color.fromARGB(255, 32, 32, 58),
                iconOn: Icons.sunny,
                iconOff: Icons.mode_night,
                textOnColor: Colors.white,
                onChanged: (bool position) {
                  setState(() {
                    whenON = position;
                    whenON2 = position;
                    whenON3 = position;
                    whenON4 = position;
                  });
                },
                onDoubleTap: () {},
                onSwipe: () {},
                onTap: () {},
              ),
            ),
          ]),
      body: TabBarView(
        controller: _tabcontroller,
        children: [
          WtrPage(),
          SearchPage(),
          ExplorePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: Container(
            color: (whenON)
                ? Colors.deepPurple[300]
                : Color.fromARGB(255, 32, 32, 58),
            child: TabBar(
                controller: _tabcontroller,
                labelColor: (whenON) ? Colors.lightBlue : Colors.blue,
                unselectedLabelColor: Colors.white,
                labelStyle: TextStyle(fontSize: 10),
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Colors.black, width: 0.0)),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home,
                      size: 24,
                    ),
                    text: "Home",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.search,
                      size: 24,
                    ),
                    text: "Search",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.explore,
                      size: 24,
                    ),
                    text: "Explore",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person_outlined,
                      size: 24,
                    ),
                    text: "Profile",
                  )
                ]),
          ),
        ),
      ),
      drawer: Drawer(),
      drawerScrimColor: (whenON)
          ? Colors.deepPurple[300]
          : const Color.fromARGB(255, 22, 23, 41),
    );
  }
}
