import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indigo/exam/purchases_leaderboard_quiz/purchasesPage/purchases_provider.dart';
import 'package:provider/provider.dart';
import 'package:super_banners/super_banners.dart';

class Purchases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildContent();
  }
  Widget _buildContent() {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => PurchasesProvider(),
        child: Consumer<PurchasesProvider>(
          builder: (context, value, child) => value.isLoading
              ? const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.indigo,
              strokeWidth: 7,
              valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
            ),
          )
              : Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Center(
                child: Text(
                  'Purchases',
                  style: GoogleFonts.lifeSavers(
                    color: Colors.green,
                        fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            body: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.green,
                  width: 10,
                ),
              ),
              child: ListView.builder(
                itemCount: value.purchases?.length,
                itemBuilder: (context, index) => Padding(
                  padding:  EdgeInsets.all(10),
                  child: Stack(
                      children: <Widget>[ Container(
                        height: 120,
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                               height: 90,
                                width: 90,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: value.colors[index],
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Card(
                                      color: value.colors[index],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '${value.purchases![index].playsCount}',
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            ),
                                            const Text(
                                              'Plays',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '${value.purchases![index].title}',
                                  style: TextStyle(
                                      color: value.colors[index],
                                      fontSize: 20),
                                ),
                                Text(
                                  value.purchases![index].showBadge == true
                                      ? '${value.purchases![index].subTitle}'
                                      : '${value.purchases![index].price}',
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Text(
                                value.purchases![index].showBadge == true
                                    ? '${value.purchases![index].price}\$'
                                    : '',
                                style: TextStyle(
                                  color: value.colors[index],
                                  fontSize: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: value.purchases![index].showBadge == true
                                ?  const CornerBanner(
                                 bannerColor: Color(0xFFE01010),
                                 shadowColor: Colors.black,
                                  elevation: 20,
                                 child: Padding(
                                 padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2
                                 ),
                                  child: Text('Deal',
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                  ),
                                 ),
                                  )
                                : Container()
                        )
                      ]
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}