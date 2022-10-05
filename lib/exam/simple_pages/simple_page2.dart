import 'package:flutter/material.dart';
import 'simplePage3.dart';
class SimplePage2 extends StatefulWidget {
  const SimplePage2({Key? key}) : super(key: key);

  @override
  State<SimplePage2> createState() => _SimplePage2State();
}

class _SimplePage2State extends State<SimplePage2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Text('Score',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),),
            ),
            Image.asset('images/imageText2.png'),
            Spacer(),
            Expanded(
              child: Image.asset('images/imageKria.png'),
            ),
            IconButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(
              builder: (context) => SimplePage3(),
            ),
            );}, icon: Icon(Icons.next_plan,
                color: Colors.indigo[800])),
          ],
        ),
      ),
    );
  }
}
