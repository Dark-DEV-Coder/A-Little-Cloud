import 'package:flutter/material.dart';

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
              "Account",
              textScaleFactor: 1.2,
              style: TextStyle(fontFamily: "Roboto"),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.headset_mic_outlined),
            title: Text(
              "Help",
              textScaleFactor: 1.2,
              style: TextStyle(fontFamily: "Roboto"),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.add_chart),
            title: Text(
              "Feedback",
              textScaleFactor: 1.2,
              style: TextStyle(fontFamily: "Roboto"),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.announcement),
            title: Text(
              "Abount",
              textScaleFactor: 1.2,
              style: TextStyle(fontFamily: "Roboto"),
            ),
            onTap: () => null,
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
}
