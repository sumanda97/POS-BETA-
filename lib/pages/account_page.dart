part of 'pages.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: blueColor),
          backgroundColor: Colors.white,
          title: Text(
            "Account",
            style: blackFontStyle3.copyWith(
                color: blueColor, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                //Header
                Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  height: 350,
                  margin: EdgeInsets.only(bottom: defaultMargin),
                  width: double.infinity,
                  color: Colors.white70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 200,
                        margin: EdgeInsets.only(bottom: 16),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/photo_border.png'))),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(mockUser.picturePath),
                                  fit: BoxFit.contain)),
                        ),
                      ),
                      Text(mockUser.storename,
                          style: blackFontStyle2.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      Text(mockUser.name,
                          style: blackFontStyle2.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      Text(mockUser.email,
                          style: blackFontStyle2.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                //Body
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      CustomTabBar(
                        titles: ["Account", "Store Apps"],
                        selectedIndex: selectedIndex,
                        onTap: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: ((selectedIndex == 0)
                                ? [
                                    'Setting Account',
                                    'Subscription history',
                                    'Business Information',
                                    'Dashboard'
                                  ]
                                : [
                                    'Rate App',
                                    'Help Center',
                                    'Privacy & Policy',
                                    'Term & Condition'
                                  ])
                            .map((e) => Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 16,
                                      left: defaultMargin,
                                      right: defaultMargin),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        e,
                                        style: blackFontStyle3,
                                      ),
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                          'assets/right_arrow.png',
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                )
              ],
            )
          ],
        ));
  }
}
