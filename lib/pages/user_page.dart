part of 'pages.dart';

class UserPage extends StatelessWidget {
  final String name;

  final String email;

  UserPage({@required this.name, @required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: blueColor),
          backgroundColor: Colors.white,
          title: Text(
            name,
            style: blackFontStyle3.copyWith(
                color: blueColor, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Container());
  }
}
