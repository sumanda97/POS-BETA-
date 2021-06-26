part of 'pages.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: blueColor),
          backgroundColor: Colors.white,
          title: Text(
            "History Transaction",
            style: blackFontStyle3.copyWith(
                color: blueColor, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: GeneralPage(
          title: "History",
          subtitle: "History Transaction",
        ));
  }
}
