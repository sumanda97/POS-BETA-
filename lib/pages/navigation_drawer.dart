part of 'pages.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final nameStore = 'MyStoreName';
    final email = 'mandamanda49@gmail.com';

    return Drawer(
      child: Material(
        color: blueColor,
        child: ListView(
          children: <Widget>[
            buildHeader(
              name: nameStore,
              email: email,
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  buildSearchField(),
                  SizedBox(
                    height: 24,
                  ),
                  Divider(color: Colors.white70),
                  SizedBox(
                    height: 24,
                  ),
                  buildMenuItem(
                      text: "Cashier",
                      icon: Icons.account_balance,
                      onClicked: () => selectedItem(context, 0)),
                  SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                      text: "History Transaction",
                      icon: Icons.attach_money,
                      onClicked: () => selectedItem(context, 1)),
                  SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                      text: "Report",
                      icon: Icons.show_chart,
                      onClicked: () => selectedItem(context, 2)),
                  SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                      text: "Manage Store",
                      icon: Icons.store,
                      onClicked: () => selectedItem(context, 3)),
                  SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                      text: "Account",
                      icon: Icons.person,
                      onClicked: () => selectedItem(context, 4)),
                  SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                      text: "Support",
                      icon: Icons.support,
                      onClicked: () => selectedItem(context, 5)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget Search Field
  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          hintText: "Branch",
          hintStyle: TextStyle(color: color),
          prefixIcon: Icon(
            Icons.search,
            color: color,
          ),
          filled: true,
          fillColor: Colors.white12,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: color.withOpacity(0.7)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: color.withOpacity(0.7)),
          )),
    );
  }

  // Builder Name Store
  Widget buildHeader({
    @required String name,
    @required String email,
  }) =>
      InkWell(
        onTap: () {},
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 50)),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackFontStyle2.copyWith(
                        color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    email,
                    style: blackFontStyle2.copyWith(
                        color: Colors.white, fontSize: 16),
                  )
                ],
              )
            ],
          ),
        ),
      );

  // Widget Menu Item
  Widget buildMenuItem({
    @required String text,
    @required IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: blackFontStyle2.copyWith(color: Colors.white)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HistoryPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ReportPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ManageStorePage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AccountPage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SupportPage(),
        ));
        break;
    }
  }
}
