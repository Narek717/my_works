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

      drawer: Drawer(
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
            Expanded(
                child:
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Card(
                    color: Colors.green,
                      child: Text('Purchases',
                      style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold),
                      )),
                ),
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: Card(
                color: Colors.purple,
                  child: Text('Play now',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  )
                  ),
                ),
            ),
            Spacer(),
          Expanded(
            child: Row(
                children: [
                  Image.asset('images/Nap.png',
                    height: 120,
                    width: 120),
                  Image.asset('images/imageKria.png',
                    height: 120,
                    width: 110,),
                  SizedBox(height: 50, child: Container(color: Colors.green),
                  )
                ],
              ),
            ),
          ],
              )
    ),
    );
  }
}
