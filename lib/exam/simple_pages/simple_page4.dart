import 'package:flutter/material.dart';

import '../rush_page.dart';
class SimplePage4 extends StatefulWidget {
  const SimplePage4({Key? key}) : super(key: key);

  @override
  State<SimplePage4> createState() => _SimplePage4State();
}

class _SimplePage4State extends State<SimplePage4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Scaffold(

        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Text('Claim Prize',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),),
            ),
       Expanded(

       child: Image.asset('images/imageText4.png')
       ),
            Spacer(),
            Expanded(
              child: Image.asset('images/imageKria3.png'),
            ),
            Spacer(),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
              builder: (context) => RushPage(),
            ),
            );},
              child: Text('Go to homepage',

            style: TextStyle(fontWeight: FontWeight.w400),),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                          )
                      )
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
