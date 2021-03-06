
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:yoga/patientScreen/NavBar.dart';
import 'package:yoga/screens/tab_bar/page/tab_bar_page.dart';

import '../screens/workouts/page/workouts_page.dart';


void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:PatientScreen()
  ));
}

class PatientScreen extends StatefulWidget {
  const PatientScreen({
    Key? key,
  }) : super(key: key);
  @override
  State<PatientScreen> createState() => _PatientScreenState();
}

class _PatientScreenState extends State<PatientScreen> {
  int day=0;
  int selsctedIconIndex = 2;
  double progress=0;
  double sleep=0;
  int dis=0;

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;
    final displayName = user?.displayName ?? "No Username";
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Cancer Yogi',
          style: TextStyle(
              color: Colors.black
          ),),
        // leading: IconButton(
        //    onPressed: () {
        //      //  Navigator.pushReplacement(
        //  //     //      context,
        //  //     //      MaterialPageRoute(
        //  //     //      builder: (context) =>  NavBar()
        //  //     // ),
        //  //     // );
        //  //
        //  //
        //  //   },
        // leading: ,
        //    icon: Icon(Icons.menu,
        //     color: Colors.black,),
        //  ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu,
              color: Colors.black,),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bolt,
              color: Colors.yellow,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
            child: Text(
              '$day Days',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
          ),
        ],
      ),
      drawer: NavBar(),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [

          SizedBox(height: 20,),
          Container(
            height: 120,

            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right :6),
                itemCount: 2,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 90,
                      width: 3*(MediaQuery.of(context).size.width)/4,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white38
                        ),
                        boxShadow: [
                      BoxShadow(
                      color: Colors.grey,
                        offset:  Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                        BoxShadow(
                          color: Colors.white,
                          offset:  Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), ],//BoxSh

                          borderRadius: BorderRadius.circular(28),
                          color: Colors.white,
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 15,
          ),

          Padding(
            padding: const EdgeInsets.only(left :30),
            child: Text('Hi $displayName',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ), ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0, top :8),
            child: Text('Lets defeat Cancer Together',
              style: TextStyle(
                fontSize: 16,
              ), ),
          ),



          SizedBox(
            height: 10,
          ),


          // Expanded(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: <Widget>[
          //       Expanded(
          //         flex: 1,
          //         child: Padding(
          //           padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
          //           child: Container(
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 SizedBox(
          //                   height: 18,
          //                 ),
          //                 Expanded(
          //                   child: Row(
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     children: [
          //                       IconButton(
          //                         onPressed: () {
          //                           setState(() {
          //                             progress=progress-0.125;
          //                             dis=(8*progress) as int;
          //                           });
          //                         },
          //                         icon: Icon(Icons.do_not_disturb_on_outlined,
          //                           color: Colors.grey[400],
          //                         size: 40,),
          //                       ),
          //                       SizedBox(
          //                         width: 20,
          //                       ),
          //                       SizedBox(
          //                         height: 125,
          //                         width: 125,
          //                         child: Stack(
          //                           fit: StackFit.expand,
          //                           children: [
          //                           CircularProgressIndicator(
          //                           value: .5,
          //                           backgroundColor: Colors.grey[350],
          //                           strokeWidth: 10,
          //                         ),
          //                             Center(child: buildProgress(),)
          //                           ],
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: 15,
          //                       ),
          //                       IconButton(
          //                         onPressed: () {
          //                           setState(() {
          //                             progress=progress+0.125;
          //                             dis=(8*progress) as int;
          //                           });
          //                         },
          //                         icon: Icon(Icons.add_circle_outline,
          //                           color: Colors.grey[350],
          //                         size: 40,),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   height: 5,
          //                 ),
          //                 Center(
          //                   child: Text('Drink 8 glasses of water',
          //                   style: TextStyle(
          //                     fontSize: 20,
          //                     color: Colors.black
          //                   ),),
          //                 ),
          //                 SizedBox(
          //                   height: 5,
          //                 ),
          //                 Center(
          //                   child: Text('',
          //                     style: TextStyle(
          //                       fontSize: 16,
          //                       color: Colors.black
          //                     ),),
          //                 )
          //               ],
          //             ),
          //             height :220,
          //             // width: 300,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(28),
          //               color: Colors.white,
          //           ),
          //         ),
          //       ),
          //       ),
          //       Expanded(
          //         flex: 1,
          //         child: Padding(
          //           padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
          //           child: Container(
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 SizedBox(
          //                   height: 18,
          //                 ),
          //                 Row(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: [
          //
          //                     SizedBox(
          //                       width: 20,
          //                     ),
          //                     SizedBox(
          //                       height: 125,
          //                       width: 125,
          //                       child: Stack(
          //                         fit: StackFit.expand,
          //                         children: [
          //                           CircularProgressIndicator(
          //                             value: 1,
          //                             backgroundColor: Colors.grey[350],
          //                             strokeWidth: 10,
          //                           ),
          //                           Center(child: buildProgresss(),)
          //                         ],
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       width: 15,
          //                     ),
          //
          //                   ],
          //                 ),
          //                 SizedBox(
          //                   height: 5,
          //                 ),
          //                 Center(
          //                   child: Text('Sleep 8 Hours daily',
          //                     style: TextStyle(
          //                         fontSize: 20,
          //                         color: Colors.black
          //                     ),),
          //                 ),
          //                 SizedBox(
          //                   height: 5,
          //                 ),
          //                 Center(
          //                   child: Text('',
          //                     style: TextStyle(
          //                         fontSize: 16,
          //                         color: Colors.black
          //                     ),),
          //                 )
          //               ],
          //             ),
          //             height :220,
          //             // width: 300,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(28),
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),





          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => TabBarPage()));
                },
                child: Container(
                  // margin: EdgeInsets.only(bottom: 13),
                  // padding: EdgeInsets.fromLTRB(24, 12,12, 22),
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,0),
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 60,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text('YOGA',
                        style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text('A natuaral cure to cancer',

                                style: TextStyle(
                                  fontSize: 20,
                                    color: Colors.white
                                ),),
                              )
                            ],
                          ),
                          Image.asset('assets/images/pose2.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xFFFCB74F),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset: Offset(2.0, 2.0), // shadow direction: bottom right
                      )
                    ],

                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(
              child: Container(
                // margin: EdgeInsets.only(bottom: 13),
                // padding: EdgeInsets.fromLTRB(24, 12,12, 22),
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(00,0,0,0),
                  child: SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15,40,0,0),
                              child: Text('MEDITATION',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                             Padding(
                              padding: EdgeInsets.only(left:15),
                               child: Text('A journey of sound',
                               style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white
                               )
                               ),
                             )
                          ],
                        ),
                        Image.asset('assets/images/pose1.png',
                        scale: 2.7,),
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color(0xFF5F9BA5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],

                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              // margin: EdgeInsets.only(bottom: 13),
              // padding: EdgeInsets.fromLTRB(24, 12,12, 22),
              height: 250,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,30,0,0),
                          child: Text('APPOINTMENT',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ),
                        Text('')
                      ],
                    ),
                    Image.asset('assets/images/17.png',
                    scale: 6,),

                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Color(0xFF9757A7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],

              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('Motivation',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,6,10,0),
            child: Container(
              padding: EdgeInsets.fromLTRB(2, 2,2, 2),
              height: 260,
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Image.asset('assets/images/first.jpg',
                  scale: 0.2,),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,6,10,0),
            child: Container(

              padding: EdgeInsets.fromLTRB(2, 2,2, 2),
              height: 260,
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Image.asset('assets/images/second.jpg',
                  scale: 0.2,),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(10,6,10,0),
            child: Container(
              padding: EdgeInsets.fromLTRB(2, 2,2, 2),
              height: 260,
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Image.asset('assets/images/fifft.jpg',
                  scale: 0.2,),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(10,6,10,0),
            child: Container(
              margin: EdgeInsets.only(bottom: 13),
              padding: EdgeInsets.fromLTRB(2, 2,2, 2),
              height: 260,
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Image.asset('assets/images/fourth.jpg',
                  scale: 0.2,),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(

        index: selsctedIconIndex,

        height: 60.0,

        onTap: (index) {
            selsctedIconIndex = index;
        },
        animationDuration: Duration(
          milliseconds: 200,
        ),
        items: <Widget>[
          Icon(Icons.add, size: 30
          ,color: Colors.black54),
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>  TabBarPage()));
            },
            child: Icon(Icons.search, size: 30,
                color: Colors.black54),
          ),
          GestureDetector(
            onTap: (){


            },
            child: Icon(Icons.home_outlined, size: 30,
                color: Colors.black54),
          ),

          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>  WorkoutsPage()));
            },
            child: Icon(Icons.favorite_border_outlined, size: 30,
                color: Colors.black54),
          ),


          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>  NavBar()));
            },
            child: Icon(Icons.person_outline, size: 30
            ,color: Colors.black54),
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.grey,
        animationCurve: Curves.easeInOut,
      ),
    );
  }

  buildProgress() {
    if(progress == 1 || progress> 1){
      return Icon(
        Icons.done,
      color:Colors.green,
      size:56,
      );
    }
    else{
      return Icon(
        Icons.water,
        color: Colors.blue,
        size: 56,
      );
    }
  }

  buildProgresss() {
    if(sleep != 1 ){
      return Icon(
        Icons.done,
        color:Colors.green,
        size:56,
      );
    }
    else{
      return Icon(
        Icons.bedtime_outlined ,
        color: Colors.blueGrey,
        size: 56,
      );
    }

  }
}

