import 'package:flutter/material.dart';
import 'package:veggie/Myprofile/myprofile.dart';
import 'package:veggie/fonts.dart';
import 'package:veggie/sign_in.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});
  Widget listtile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 35,
        color: Colors.black54,
      ),
      title: Text(
        title,
        style:
            TextStyle(fontFamily: Myfonts, fontSize: 15, color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: const Color(0Xffd1ad17),
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 46,
                  backgroundColor: Colors.white24,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.red,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome Guest",
                      style: TextStyle(
                          fontFamily: Myfonts,
                          fontWeight: FontWeight.w500,
                          fontSize: 17.5),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                        height: 30,
                        child: OutlinedButton(
                            onPressed: () {},
                            child: Text("Login",
                                style: TextStyle(
                                    fontFamily: Myfonts,
                                    color: const Color.fromARGB(
                                        255, 90, 88, 88))))),
                  ],
                )
              ],
            ),
          ),
          listtile(icon: Icons.home_outlined, title: "Home"),
          listtile(icon: Icons.shopping_bag_outlined, title: "Review cart"),
          InkWell(
            child: listtile(
              icon: Icons.person_2_outlined,
              title: "My profile",
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyProfile(),
                  ));
            },
          ),
          listtile(icon: Icons.notifications_outlined, title: "Notifications"),
          listtile(icon: Icons.favorite_outline_rounded, title: "Wish list"),
          listtile(
              icon: Icons.help_center_outlined, title: "Raise a complaint"),
          listtile(icon: Icons.question_answer_outlined, title: "FAQ"),
          InkWell(
            child: listtile(
              icon: Icons.arrow_back,
              title: "Go back",
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignIn(),
                  ));
            },
          ),
          //  const Expanded(child: Column(
          //   children: [],
          //  ))
          Container(
            child: Column(
              children: [
                const Divider(
                  color: Colors.grey,
                ),
                Text(
                  "Contact support",
                  style: TextStyle(
                      fontFamily: Myfonts,
                      fontSize: 15,
                      color: Colors.grey[500]),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Call us:",
                      style:
                          TextStyle(color: Color.fromARGB(255, 145, 142, 142)),
                    ),
                    Text("91XXXXXXX",
                        style: TextStyle(
                            color: Color.fromARGB(255, 142, 139, 139))),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mail us:",
                      style:
                          TextStyle(color: Color.fromARGB(255, 145, 142, 142)),
                    ),
                    Text("ab@mail.com",
                        style: TextStyle(
                            color: Color.fromARGB(255, 143, 141, 141))),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
