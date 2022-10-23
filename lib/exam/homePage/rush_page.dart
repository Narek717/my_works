import 'package:flutter/material.dart';
import 'package:indigo/exam/realTime/realTime.dart';

class RushPage extends StatefulWidget {
  const RushPage({Key? key}) : super(key: key);

  @override
  State<RushPage> createState() => _RushPageState();
}
class _RushPageState extends State<RushPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.black38,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Column(
              children:[
                IconButton(onPressed: (){},
                    icon: Icon(Icons.print,
                      color: Colors.red,
                    ),
                    iconSize: 30
                ),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.credit_card,
                        color: Colors.red
                    ),
                    iconSize: 30
                ),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.phone,
                        color: Colors.red
                    ),
                    iconSize: 30
                ),

                IconButton(onPressed: (){},
                  icon: Icon(Icons.settings,
                      color: Colors.red
                  ),
                  iconSize: 30,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Image.asset('images/image1.png',
              height: 80,
              width: 80),
            const StreamBuilderRealTimeClock(),
       Padding(
         padding: EdgeInsets.all(30),
           child: Expanded(
            child: Row(
              children:[
                Column(
               children: [
                 SizedBox(
                   height: 140,
                   width: 140,
                   child: ElevatedButton(
                     onPressed: (){},
                       child: Column(
                         children: [
                           Icon(Icons.play_circle,
                           size: 50,),
                           Text('Play now',
                           style: TextStyle(
                             fontSize: 18,
                           ),
                           ),
                      ],
                       ),
                   style: ButtonStyle(
                     padding: MaterialStateProperty.all(
                         EdgeInsets.only(
                             top: 25, bottom: 25,
                     left: 15, right: 15
                         ),
                     ),
                       backgroundColor: MaterialStateProperty.all(
                           Colors.deepPurple),
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                                 borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(20),
                                   bottomLeft: Radius.circular(20),
                                 )
                             )
                         )
                   ),
                   ),
                 ),
                 Divider(height: 20, color: Colors.white,),
                 SizedBox(
                   height: 140,
                   width: 140,
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Column(
                       children: [
                         Icon(Icons.bar_chart,
                           size: 70),
                         Text('Leaderboard',
                           style: TextStyle(
                             fontSize: 18,
                           ),
                         ),
                       ],
                     ),
                     style: ButtonStyle(
                         padding: MaterialStateProperty.all(
                           EdgeInsets.only(
                               top: 25, bottom: 25,
                               left: 15, right: 15
                           ),
                         ),
                         backgroundColor: MaterialStateProperty.all(
                             Colors.deepOrangeAccent),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                                 borderRadius: BorderRadius.only(
                                   topLeft: Radius.circular(20),
                                   bottomRight: Radius.circular(20),
                                 )
                             )
                         )
                     ),
                   ),
                 ),
               ],
             ),
                Spacer(),
                Column(
                  children: [
                    SizedBox(
                      height: 140,
                      width: 140,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Column(
                          children: [
                            Icon(Icons.shopping_cart,
                              size: 50,),
                            Text('Purchases',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              EdgeInsets.only(
                                  top: 25, bottom: 25,
                                  left: 15, right: 15
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.green),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    )
                                )
                            )
                        ),
                      ),
                    ),
                    Divider(height: 20, color: Colors.white,),
                    SizedBox(
                      height: 140,
                      width: 140,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Column(
                          children: [
                            Icon(Icons.person,
                              size: 70,),
                            Text('Profile',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              EdgeInsets.only(
                                  top: 25, bottom: 25,
                                  left: 15, right: 15
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.blue),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    )
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
           ),
         ),
          Expanded(
          child: Image.asset('images/imageXary.png',
         ),
              ),
          ],
        ),
    ),
    );
  }
}
