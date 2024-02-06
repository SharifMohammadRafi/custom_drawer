import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      //for rotation scale //
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isDrawerOpen ? 0.85 : 1.00)
        ..rotateZ(isDrawerOpen ? -50 : 0),
      // for rotation scale //

      duration: const Duration(milliseconds: 200),
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            isDrawerOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // for the animation logic //
                  isDrawerOpen
                      ? GestureDetector(
                          child: const Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                          ),
                          onTap: () {
                            //
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : GestureDetector(
                          child: const Icon(
                            Icons.menu,
                            size: 30,
                          ),
                          onTap: () {
                            //
                            setState(() {
                              xOffset = 285;
                              yOffset = 80;
                              isDrawerOpen = true;
                            });
                          },
                        ),
                  // for the animation logic //

                  const Text(
                    "Animated Drawer",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Container()
                ],
              ),
            ),
            //
            const SizedBox(
              height: 40,
            ),
            const Column(
              children: <Widget>[
                //
                NewPadding(
                  icon1: Icons.home,
                  text1: "Home",
                  icon2: Icons.location_city_rounded,
                  text2: "Office",
                ),
                SizedBox(
                  height: 40,
                ),
                NewPadding(
                  icon1: Icons.location_on,
                  text1: "Location",
                  icon2: Icons.access_alarms_sharp,
                  text2: "Time",
                ),
                SizedBox(
                  height: 40,
                ),
                NewPadding(
                  icon1: Icons.account_balance_wallet_rounded,
                  text1: "Account",
                  icon2: Icons.account_tree_rounded,
                  text2: "Connections",
                ),
                SizedBox(
                  height: 40,
                ),
                NewPadding(
                  icon1: Icons.add_a_photo_rounded,
                  text1: "Camera",
                  icon2: Icons.local_post_office,
                  text2: "E-mails",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NewPadding extends StatelessWidget {
  final IconData icon1;
  final String text1;
  final IconData icon2;
  final String text2;

  const NewPadding({
    Key? key,
    required this.icon1,
    required this.icon2,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //
                Icon(
                  icon1,
                  color: Colors.blueGrey,
                  size: 70,
                ),
                Text(
                  text1,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    decoration: TextDecoration.none,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //
                Icon(
                  icon2,
                  color: Colors.blueGrey,
                  size: 70,
                ),
                Text(
                  text2,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    decoration: TextDecoration.none,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
