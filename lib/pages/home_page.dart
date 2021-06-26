part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: blueColor),
          backgroundColor: Colors.white,
          title: Text(
            "Cashier",
            style: blackFontStyle3.copyWith(
                color: blueColor, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            SafeArea(
                child: Container(
              color: 'FAFAFC'.toColor(),
            )),
            SafeArea(
                child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
              children: [
                Center(
                  child: CashierPage(),
                ),
                Center(
                  child: Text("Favorite Area"),
                ),
                Center(
                  child: Text("Input Area"),
                ),
              ],
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: CostumBottomNavBar(
                selectedIndex: selectedPage,
                onTap: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                  pageController.jumpToPage(selectedPage);
                },
              ),
            )
          ],
        ));
  }
}
