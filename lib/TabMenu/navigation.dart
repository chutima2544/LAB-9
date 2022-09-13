import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'CHUTIMA';
    final email = 'chutima@onna.com';
    final urlImage =
        "https://scontent-kut2-2.xx.fbcdn.net/v/t39.30808-6/293322459_5319408484793514_5757599367281822111_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFuNa8qcOfD6ZIx4kFIVEkSjK096l_Yz8SMrT3qX9jPxOJzzqLwj4Q56P4PbeiLkKIfyTLVVHd6Qyc7wUV6MMiU&_nc_ohc=hAF2b4IY3DUAX_-2OMJ&tn=iFIfqv2gQOvzQK0y&_nc_ht=scontent-kut2-2.xx&oh=00_AT_vMyEwS8R76fIWaN_6_4TtNJoWJIvVvY5EFthxiA8Uig&oe=63246BAE";
    return Drawer(
      child: Material(
        color: Colors.black,
        child: ListView(children: <Widget>[
          buildHeader(
            urlImage: urlImage,
            name: name,
            email: email,
          ),
          Container(
            padding: padding,
            child: Column(
              children: [
                const SizedBox(height: 48),
                buildSearchField(),
                const SizedBox(height: 48),
                buildMenuItem(
                  text: 'notifications',
                  icon: Icons.notifications,
                ),
                const SizedBox(height: 48),
                buildMenuItem(
                  text: 'People',
                  icon: Icons.people,
                ),
                const SizedBox(height: 48),
                buildMenuItem(
                  text: 'Favourites',
                  icon: Icons.favorite
                ),
                const SizedBox(height: 48),
                buildMenuItem(
                  text: 'Address',
                  icon: Icons.add_location_rounded,
                ),
                const SizedBox(height: 48),
                buildMenuItem(
                  text: 'Payment',
                  icon: Icons.credit_card_outlined,
                ),
                const SizedBox(height: 24),
                Divider(color: Colors.white70),
                const SizedBox(height: 24),
                buildMenuItem(
                  text: 'Settings',
                  icon: Icons.settings,
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Help',
                  icon: Icons.help_outline,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildHeader({
     String urlImage,
     String name,
     String email,
  }) =>
      InkWell(
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
     String text,
     IconData icon,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text,
          style: TextStyle(
            color: color,
          )),
      hoverColor: hoverColor,
      onTap: () {},
    );
  }
}