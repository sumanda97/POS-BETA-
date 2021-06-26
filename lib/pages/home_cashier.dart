part of 'pages.dart';

class CashierPage extends StatefulWidget {
  @override
  _CashierPageState createState() => _CashierPageState();
}

class _CashierPageState extends State<CashierPage> {
  String dropdownValue = 'All Products';
  final items = List.from(DataProduct.productList);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // HEADER
          Row(
            children: [
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey[200]),
                        top: BorderSide(color: Colors.grey[200]))),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                      child: DropdownButton<String>(
                    isExpanded: true,
                    value: dropdownValue,
                    underline: SizedBox(),
                    items: <String>['All Products', 'Foods', 'Clothes']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                  )),
                ),
              ),
              // ICON SEARCH
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey[200]),
                            left: BorderSide(color: Colors.grey[200]),
                            top: BorderSide(color: Colors.grey[200]))),
                    child: Icon(Icons.search),
                  )),
              // ICON BARCODE
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      print("Bekerja");
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[200])),
                      child: Icon(Icons.bar_chart),
                    ),
                  )),
              // ICON FILTER VIEW
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      print("Test");
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey[200]),
                              top: BorderSide(color: Colors.grey[200]))),
                      child: Icon(Icons.list_sharp),
                    ),
                  ))
            ],
          ),
          SizedBox(height: 25),
          // LIST OF PRODUCTS
          Expanded(
            child: AnimatedList(
              initialItemCount: items.length,
              itemBuilder: (context, index, animation) =>
                  buildItem(items[index], index, animation),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildItem(item, int index, Animation<double> animation) =>
    ProductItemWidget(
      item: item,
      animation: animation,
      onClicked: () {},
    );
