import 'package:flutter/material.dart';
import 'package:indigo/exam/simple_pages/simple_page2.dart';

class SimplePage1 extends StatelessWidget {
  const SimplePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Text('Game Play',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),),
            ),
            Image.asset('images/imageText.png'),
            Spacer(),
            Expanded(
              child: Image.asset('images/imageNap.png'),
            ),
            IconButton(onPressed: (){  Navigator.push(context, MaterialPageRoute(
              builder: (context) => SimplePage2(),
            ),
            );}, icon: Icon(Icons.next_plan,
            color: Colors.indigo[800])),
          ],
        ),
      ),
    );
  }
}
