import 'package:flutter/material.dart';
import 'package:indigo/exam/simple_pages/simple_page1.dart';
import 'checkbox.dart';

void main() {
  runApp(const Myapp2());
}
class Myapp2 extends StatelessWidget {
  const Myapp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
body: MyScreen(),
        ),
      ),
    );
  }
}
class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);
  @override
  State<MyScreen> createState() => _MyScreenState();
}
class _MyScreenState extends State<MyScreen> {
  bool showPassword = false;
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,

            ),
           Padding(
              padding: EdgeInsets.all(5.0),
             child: Image.asset('images/image1.png',
             height: 100,
             width: 100,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Email Address',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
           TextField(
              showCursor: true,
              decoration: InputDecoration(
                filled: false,
                fillColor: Colors.redAccent,
                labelText: 'Enter your mail',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigoAccent,
                      width: 3),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
             TextField(
              controller: passwordCtrl,
              obscureText: !showPassword,
              obscuringCharacter: ('*'),
              maxLength: 10,
              decoration: InputDecoration(
                  filled: false,
                  fillColor: Colors.redAccent,
                  labelText: 'Enter your password',
              suffixIcon: IconButton(
                onPressed: _onShowPassword,
                icon: showPassword ?
                const Icon(Icons.visibility,
                  color: Colors.black,
                )
                    : const Icon(Icons.visibility_off),
                color: Colors.black,
              ),
              enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepOrange, width: 3),
                borderRadius: BorderRadius.circular(10)
              ),
              ),
            ),

            CheckBoxWidget(),
            Text('remember password'),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SimplePage1(),
                  ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[500]),
                  fixedSize: MaterialStateProperty.all( Size(250, 50)),
                  elevation: MaterialStateProperty.all(20),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )
                        )
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const  [
                    Text(
                      '',
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Icon(
                        Icons.arrow_forward,
                      color: Colors.brown,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('Forgot password'),

                  Text('Sign up',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void _onShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }
}