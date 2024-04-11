import 'package:flutter/material.dart';
import 'package:veggie/Myprofile/drawer.dart';
import 'package:veggie/fonts.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});
  Widget listTile({required IconData icon, required String title}) {
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(
            title,
            style: TextStyle(
                fontFamily: Myfonts,
                fontSize: 15,
                color: Color.fromARGB(255, 70, 69, 69)),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          shape: const CircleBorder(),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appcolor,
          title: Text(
            "My Profile",
            style: TextStyle(fontFamily: Myfonts),
          ),
        ),
        drawer: Mydrawer(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(color: appcolor),
                  ),
                  Container(
                    height: 568,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: backgrouncolor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 250,
                              height: 80,
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Manikanta",
                                        style: TextStyle(
                                            fontFamily: Myfonts, fontSize: 23),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "talagamanikanta98@gmail.com",
                                        style: TextStyle(
                                            fontFamily: Myfonts,
                                            fontSize: 10,
                                            color: Colors.grey.shade600),
                                      ),
                                    ],
                                  ),
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: appcolor,
                                    child: CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        Icons.edit,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        listTile(icon: Icons.shopping_bag, title: "My Orders"),
                        listTile(
                            icon: Icons.location_on_outlined,
                            title: "My Delivery address"),
                        listTile(
                            icon: Icons.file_copy_outlined,
                            title: "Terms and Conditions"),
                        listTile(
                            icon: Icons.policy_outlined, title: "Privacy Policy"),
                        listTile(icon: Icons.add_chart, title: "About"),
                        listTile(
                            icon: Icons.person_2_outlined, title: "Refer friends"),
                        listTile(icon: Icons.logout_outlined, title: "Logout"),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: backgrouncolor,
                  child: CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
