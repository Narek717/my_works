import 'package:flutter/material.dart';
import 'package:indigo/exam/simple_pages/simple_page4.dart';

class SimplePage3 extends StatefulWidget {
  const SimplePage3({Key? key}) : super(key: key);

  @override
  State<SimplePage3> createState() => _SimplePage3State();
}

class _SimplePage3State extends State<SimplePage3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Text('LeaderBoard',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),),
            ),
            Image.asset('images/imageText3.png'),
            Spacer(),
            Expanded(
              child: Image.asset('images/imageKria2.png'),
            ),
            IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(
              builder: (context) => SimplePage4(),
            ),
            ); }, icon: Icon(Icons.next_plan,
                color: Colors.indigo[800])),
          ],
        ),
      ),
    );
  }
}