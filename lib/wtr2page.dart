// import 'package:flutter/material.dart';
// import 'package:weathertoday/explore.dart';
// import 'package:weathertoday/homepage.dart';
// import 'package:weathertoday/profilepage.dart';
// import 'package:weathertoday/searchpage.dart';
// import 'package:weathertoday/wtrpage.dart';

// class Wtr2Page extends StatefulWidget {
//   const Wtr2Page({super.key});

//   @override
//   State<Wtr2Page> createState() => _Wtr2PageState();
// }

// class _Wtr2PageState extends State<Wtr2Page>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 4, vsync: this);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _tabController.dispose();
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text("Ryagada"),
//       // ),
//       backgroundColor: Colors.deepPurple,
//       // bottomNavigationBar: BottomNavigationBar(
//       //   items: [
//       //   BottomNavigationBarItem(
//       //       icon: Icon(
//       //         Icons.home,
//       //         color: Colors.blue,
//       //       ),
//       //       label: ''),
//       //   BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
//       //   BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//       //   BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
//       // ],
//       // ),

//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ClipRRect(
//           borderRadius: BorderRadius.all(Radius.circular(50)),
//           child: Container(
//             color: Colors.black54,
//             child: TabBar(
//                controller: _tabController,
//               labelColor: Colors.amber,
//               unselectedLabelColor: Colors.white,
//               labelStyle: TextStyle(fontSize: 10),
//               indicator: UnderlineTabIndicator(borderSide: BorderSide(color: Colors.orange,width: 0.0)),
//               // insets:EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
//               indicatorColor: Colors.green,          
//               tabs: [
//                 Tab(
//                   icon: Icon(Icons.home,size: 24.0,),
//                   text: "Home",
//                 ),
//                 Tab(
//                   icon: Icon(Icons.search,size: 24.0,),
//                   text: "Search",
//                 ),
//                 Tab(
//                   icon: Icon(Icons.explore,size: 24.0,),
//                   text: "Explore",
//                 ),
//                 Tab(
//                   icon: Icon(Icons.person_2_outlined,size: 24.0,),
//                   text: "Profile",
//                 ),
//               ],
             
//             ),
//           ),
//         ),
//       ),
      
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           WtrPage(),
//           SearchPage(),
//           ExplorePage(),
//           ProfilePage(),
//         ]
//         ),


//       // body: SafeArea(
//       //   child: Column(
//       //     children: [

//       //       SizedBox(
//       //         height: 40,
//       //       ),
//       //       Container(
//       //           alignment: Alignment.topLeft,
//       //           child: Text(
//       //             "Today's Report",
//       //             style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//       //           )),
//       //       Center(
//       //         child: Column(
//       //           children: [
//       //             SizedBox(
//       //               height: 40,
//       //             ),
//       //             Image.asset("assets/work.jpg"),
//       //             SizedBox(
//       //               height: 40,
//       //             ),
//       //             Text(
//       //               "Its Cloudy",
//       //               style: TextStyle(fontSize: 20),
//       //             ),
//       //             SizedBox(
//       //               height: 40,
//       //             ),
//       //             Text(
//       //               "29",
//       //               style: TextStyle(fontSize: 60),
//       //             ),
//       //             SizedBox(
//       //               height: 40,
//       //             ),

//       //             SizedBox(
//       //               height: 40,
//       //             ),
//       //             SizedBox(
//       //               height: 40,
//       //             )
//       //           ],
//       //         ),
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       // drawer: Drawer(),
//       // floatingActionButton: ButtonBar(
//       //   children: [
//       //   ElevatedButton(onPressed: (){}, child: Text("data")),
//       //   ElevatedButton(onPressed: (){}, child: Text("data")),
//       //   ElevatedButton(onPressed: (){}, child: Text("data"))
//       // ],
//       // ),
//     );
//   }
// }
