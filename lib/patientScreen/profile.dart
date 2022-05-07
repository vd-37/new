import 'package:flutter/material.dart';
import 'package:yoga/patientScreen/termsncondition.dart';

import 'homeScreen.dart';

class Profilee extends StatefulWidget {
  @override
  _ProfileeState createState() => _ProfileeState();
}

class _ProfileeState extends State<Profilee> {

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PatientScreen()
              ),
            );

          },
          icon: Icon(Icons.arrow_back,
            color: Colors.white,),
        ),
        backgroundColor: Colors.transparent,

      ),
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter = counter + 1;
          });
        },
        child: Container(
          width: 60,
          height: 60,
          child: Icon(
              Icons.add
          ),
          // decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     gradient: LinearGradient(
          //       begin: Alignment.topLeft,
          //       end:
          //       Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
          //       colors: <Color>[
          //         Color(0xffee0000),
          //         Color(0xffeeee00)
          //       ], // red to yellow
          //       tileMode: TileMode.repeated,
          //       // colors: Colors.deepPurple[800],
          //       // Colors.deepPurpleAccent],
          //     ),
          // ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex:5,
                child:Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(-15),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end:
                      Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Color(0xFF6078EA),
                        Color(0xFF17EAD9)
                      ], // red to yellow
                      tileMode: TileMode.repeated,
                    ),
                  ),
                  child: Column(
                      children: [
                        SizedBox(height: 110.0,),
                        CircleAvatar(
                          radius: 65.0,
                          backgroundImage: AssetImage('assets/images/23.png'),
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(height: 10.0,),
                        Text('Vinayaka D',
                            style: TextStyle(
                              color:Colors.white,
                              fontSize: 20.0,
                            )),
                        SizedBox(height: 10.0,),
                        Text('A Warrior',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 15.0,
                          ),)
                      ]
                  ),
                ),
              ),

              Expanded(
                flex:5,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                      child:Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          elevation: 5,  // Change this
                          shadowColor: Colors.white,
                          margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                          child: Container(
                              width: 310.0,
                              height:385.0,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [


                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.account_circle,
                                          color: Colors.blueAccent[400],
                                          size: 35,
                                        ),
                                        SizedBox(
                                          height:20,
                                          width: 20.0,),
                                        MaterialButton(
                                          onPressed: (){
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>MyHomePage()
                                              ),
                                            );
                                          },
                                          child: Text("PROFILE",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                            ),),
                                        )
                                      ],
                                    ),
                                    Divider(color: Colors.grey[300],),
                                    SizedBox(height: 15.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.auto_awesome,
                                          color: Colors.yellowAccent[400],
                                          size: 35,
                                        ),
                                        SizedBox(width: 20.0,),
                                        MaterialButton(
                                          onPressed: (){
                                            // Navigator.pushReplacement(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) =>Condition()
                                            //   ),
                                            // );

                                            
                                          },
                                          child: Text("CLINICAL CONDITION",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                            ),),
                                        )

                                      ],
                                    ),
                                    Divider(color: Colors.grey[300],),
                                    SizedBox(height: 15.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.pinkAccent[400],
                                          size: 35,
                                        ),
                                        SizedBox(width: 20.0,),
                                        MaterialButton(
                                          onPressed: (){
                                            
                                          },
                                          child: Text("RISK FACTORS",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                            ),),
                                        )

                                      ],
                                    ),
                                    Divider(color: Colors.grey[300],),
                                    SizedBox(height: 15.0,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.masks,
                                          color: Colors.purple,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          height:20,
                                          width: 20.0,),
                                        MaterialButton(
                                          onPressed: (){
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>MyHomePage()
                                              ),
                                            );
                                          },
                                          child: Text("DISEASE DETAILS",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                            ),),
                                        )
                                      ],
                                    ),
                                    Divider(color: Colors.grey[300],),
                                    SizedBox(height: 15.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.settings,
                                          color: Colors.lightGreen[400],
                                          size: 35,
                                        ),
                                        SizedBox(width: 20.0,),
                                        MaterialButton(
                                          onPressed: (){
                                            
                                          },
                                          child: Text("LOGOUT",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                            ),),
                                        )

                                      ],
                                    ),
                                  ],
                                ),
                              )
                          )
                      )
                  ),
                ),
              ),

            ],
          ),
          Positioned(
              top:MediaQuery.of(context).size.height*0.45,
              left: 20.0,
              right: 20.0,
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 5,  // Change this
                  shadowColor: Colors.white,
                  child: Padding(
                    padding:EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child:Column(
                              children: [
                                Text('Battles',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 14.0
                                  ),),
                                SizedBox(height: 5.0,),
                                Text("$counter",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),)
                              ],
                            )
                        ),

                        Container(
                          child: Column(
                              children: [
                                Text('Doctor\'s name',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 14.0
                                  ),),
                                SizedBox(height: 5.0,),
                                Text('Dr Crytsal',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),)
                              ]),
                        ),

                        Container(
                            child:Column(
                              children: [
                                Text('Trainer',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 14.0
                                  ),),
                                SizedBox(height: 5.0,),
                                Text('Akshay',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),)
                              ],
                            )
                        ),
                      ],
                    ),
                  )
              )
          )
        ],

      ),
    );
  }
}
