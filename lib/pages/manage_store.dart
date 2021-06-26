part of 'pages.dart';

class ManageStorePage extends StatefulWidget {
  @override
  _ManageStorePageState createState() => _ManageStorePageState();
}

class _ManageStorePageState extends State<ManageStorePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: blueColor),
        backgroundColor: Colors.white,
        title: Text(
          "Manage Store",
          style: blackFontStyle3.copyWith(
              color: blueColor, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey[350])),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Search customer, payment or product',
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                ),
              ),
            ),
            // Costum Tab Bar
            CustomTabBarManageStore(
              titles: [
                "Set Product",
                "Cashier & Payment",
                "Set Printer & Receipt",
              ],
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
                          'Product',
                          'Category Product',
                          'Discount',
                          'Order Type'
                        ]
                      : [
                          'Payment Method',
                          'Tax & Service Charge',
                          "Set Printer & Receipt",
                        ])
                  .map((e) => Padding(
                        padding: EdgeInsets.only(
                            bottom: 16,
                            left: defaultMargin,
                            right: defaultMargin),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
