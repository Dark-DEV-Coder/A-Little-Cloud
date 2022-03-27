import 'package:flutter/material.dart';

import '../SideNavigation/About.dart';
import '../SideNavigation/My_Account.dart';
import '../SideNavigation/Terms_Privacy.dart';
import '../SideNavigation/Help.dart';
import '../SideNavigation/MyDiary.dart';
import '../SideNavigation/Settings.dart';
import '../SideNavigation/Feedback.dart';
const Color darkText = Color(0xFF253840);
const String fontName = 'Roboto';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Diên cute",
              style: TextStyle(fontFamily: "Roboto"),
            ),
            accountEmail: Text(
              "diencute20011@gmail.com",
              style: TextStyle(fontFamily: "Roboto"),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://i.pinimg.com/564x/cf/f0/59/cff05928c82eb0d047411c3b70e11235.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    "https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle_rounded,
            ),
            title: Text(
              "My Account",
              textScaleFactor: 1.2,
              style: TextStyle(fontFamily: "Roboto"),
            ),
            onTap: () => selectedItem(context, 0),
          ),
          ListTile(
            leading: Icon(
              Icons.book_outlined,
            ),
            title: Text(
              "My Diary",
              textScaleFactor: 1.2,
              style: TextStyle(fontFamily: "Roboto"),
            ),
            onTap: () => selectedItem(context, 1),
          ),
          ListTile(
            leading: Icon(Icons.headset_mic_outlined),
            title: Text(
              "Help",
              textScaleFactor: 1.2,
              style: TextStyle(fontFamily: "Roboto"),
            ),
              onTap: () => selectedItem(context, 2),
          ),
          ListTile(
            leading: Icon(Icons.add_chart),
            title: Text(
              "Feed back",
              textScaleFactor: 1.2,
              style: TextStyle(fontFamily: "Roboto"),
            ),
            onTap: () => selectedItem(context, 3),
          ),
          ListTile(
            leading: Icon(Icons.announcement),
            title: Text(
              "About Us",
              textScaleFactor: 1.2,
              style: TextStyle(fontFamily: "Roboto"),
            ),
            onTap: () => selectedItem(context, 4),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text(
              "Terms & Privacy",
              textScaleFactor: 1.2,
              style: TextStyle(fontFamily: "Roboto"),
            ),
            onTap: () => selectedItem(context, 5),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "Settings",
              textScaleFactor: 1.2,
              style: TextStyle(fontFamily: "Roboto"),
            ),
            onTap: () => selectedItem(context, 6),
          ),

          Divider(color: Color.fromRGBO(0, 0, 0, 1)),
          ListTile(
            title: Text(
              'Sign Out',
              style: TextStyle(
                fontFamily: fontName,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: darkText,
              ),
              textAlign: TextAlign.left,
            ),
            trailing: Icon(
              Icons.power_settings_new,
              color: Colors.red,
            ),
            onTap: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom,
          )
        ],
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onTap,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.red;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onTap,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Account(),
        ));
        break;
      // case 1:
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => MyDiary(),
      //   ));
      //   break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Help(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => feedback(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => About(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Terms_Privacy(),
        ));
        break;

      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Settings(),
        ));
        break;
    }
  }
}

