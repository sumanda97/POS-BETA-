part of 'pages.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Sign In ",
      subtitle: "Make Your Sales",
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/titles.png"),
                    ),
                    border: Border.all(color: Colors.white)),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Slide.png"),
                    ),
                    border: Border.all(color: Colors.white)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Easy Management for your Store",
                style: blackFontStyle2,
              ),
              SizedBox(
                height: 200,
              ),
              // Create New Account Button
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 24.0),
                height: 45.0,
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)))),
                    onPressed: () {
                      Get.to(SignUpPage());
                    },
                    child: Text(
                      "Create new account",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 24.0),
                height: 45.0,
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(color: blueColor),
                        shape: BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)))),
                    onPressed: () {
                      Get.to(LoginPage());
                    },
                    child: Text(
                      "Log In",
                      style: GoogleFonts.poppins(
                          color: blueColor, fontWeight: FontWeight.w500),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
