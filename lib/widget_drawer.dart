import 'package:flutter/material.dart';

class WidgetDrawer extends StatefulWidget {
  const WidgetDrawer({Key? key}) : super(key: key);

  @override
  _WidgetDrawerState createState() => _WidgetDrawerState();
}





class _WidgetDrawerState extends State<WidgetDrawer> {
  Widget drawercard(String titel, IconData icon, bool iscolor, bool isborder) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:
            iscolor
                ? const Color.fromARGB(255, 186, 208, 172)
                : const Color.fromARGB(255, 221, 194, 223),
        border:
            isborder
                ? Border.all(color: const Color.fromARGB(255, 98, 255, 0))
                : Border.all(color: const Color.fromARGB(255, 227, 2, 243)),
      ),
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [Icon(icon), SizedBox(width: 10), Text(titel)]),
      ),
    );
  }


GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Drawer Apk"),
        backgroundColor: Colors.blueGrey,
      ),

      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            "https://www.lunapic.com/editor/premade/blur.gif",
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("SOBUJ", style: TextStyle(fontSize: 20)),
                            Text(
                              "Flutter App Developer",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    drawercard("Home", Icons.home, true, false),
                drawercard("Office", Icons.home, false, true),
                drawercard("Food", Icons.food_bank_sharp, true, false),
                drawercard("School", Icons.school, false, true),
                drawercard("Documents", Icons.document_scanner, true, false),
                drawercard("Ac", Icons.ac_unit_sharp, false, true),
                drawercard("Alarm", Icons.access_alarm_sharp, true, false),
                drawercard("Call", Icons.add_ic_call_outlined, false, true),
                drawercard("Drive", Icons.add_to_drive, true, false),
                drawercard("Album", Icons.album, false, true),
                drawercard("Search", Icons.youtube_searched_for, true, false),
                drawercard("Pentagon", Icons.pentagon, false, true),
                drawercard("Roket", Icons.rocket, true, false),
                drawercard("Keyboard", Icons.keyboard, false, true),
                drawercard("Radio", Icons.radio, true, false),
                drawercard("Mail", Icons.mail, false, true),
                drawercard("class", Icons.class_, true, false),
                drawercard("Tiktok", Icons.tiktok, false, true),
                drawercard("Home", Icons.home, true, false),
                drawercard("Office", Icons.home, false, true),
                drawercard("Food", Icons.food_bank_sharp, true, false),
                drawercard("School", Icons.school, false, true),
                drawercard("Documents", Icons.document_scanner, true, false),
                drawercard("Ac", Icons.ac_unit_sharp, false, true),
                drawercard("Alarm", Icons.access_alarm_sharp, true, false),
                drawercard("Call", Icons.add_ic_call_outlined, false, true),
                drawercard("Drive", Icons.add_to_drive, true, false),
                drawercard("Album", Icons.album, false, true),
                drawercard("Search", Icons.youtube_searched_for, true, false),
                drawercard("Pentagon", Icons.pentagon, false, true),
                drawercard("Roket", Icons.rocket, true, false),
                drawercard("Keyboard", Icons.keyboard, false, true),
                drawercard("Radio", Icons.radio, true, false),
                drawercard("Mail", Icons.mail, false, true),
                drawercard("class", Icons.class_, true, false),
                drawercard("Tiktok", Icons.tiktok, false, true),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

      body: Center(
        child: InkWell(onTap: (){
          scaffoldKey.currentState!.openDrawer();
        },
          child: Text(
            "Drawer Apk",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
