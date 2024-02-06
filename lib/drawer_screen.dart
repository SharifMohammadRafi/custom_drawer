import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 20,
          bottom: 70,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //
            Row(
              children: <Widget>[
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/Group.jpg",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "App Logo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  icon: Icons.person,
                  text: "Profile",
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  icon: Icons.chat_bubble_outline,
                  text: "Messages",
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  icon: Icons.bookmark_border,
                  text: "Saved",
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  icon: Icons.favorite_border,
                  text: "Favorites",
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  icon: Icons.lightbulb_outline,
                  text: "Hint",
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  icon: Icons.settings,
                  text: "Settings",
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.cancel,
                  color: Colors.white.withOpacity(0.5),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Log out",
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const NewRow({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
