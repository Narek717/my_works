import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text(
          'Leaderboard',
          style: GoogleFonts.lifeSavers(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Expanded(
          child: Container(
            color: Colors.white,
            child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: 8,
                itemBuilder: ( context, index){
                  return Expanded(
                    child : GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        height: 70,
                        margin: EdgeInsets.all(7),
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
        ),
      ),
    );
  }
}