import 'package:flutter/material.dart';


class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                accountName: Text("Abinash"),
                accountEmail: Text("+919658158581"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://cdn.icon-icons.com/icons2/2468/PNG/512/user_kids_avatar_user_profile_icon_149314.png"),
              ),
            ),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(
              Icons.group,
            ),
            title: Text(
              "New Group",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(
              Icons.contacts,
            ),
            title: Text(
              "Contacts",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(
              Icons.call,
            ),
            title: Text(
              "Calls",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(
              Icons.emoji_people,
            ),
            title: Text(
              "people Nearby",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(
              Icons.favorite,
            ),
            title: Text(
              "saved messages",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(
              Icons.settings,
            ),
            title: Text(
              "setting",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile {
}
