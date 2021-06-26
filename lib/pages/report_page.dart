part of 'pages.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: blueColor),
          backgroundColor: Colors.white,
          title: Text(
            "Report",
            style: blackFontStyle3.copyWith(
                color: blueColor, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: GeneralPage(
          title: "Report",
          subtitle: "Report Product & Transaction",
        ));
  }
}
