part of 'pages.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Log in",
      subtitle: "Choose your account",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(50, 5, 0, 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome To Point - Of - Sales",
                  style: blackFontStyle3.copyWith(
                      fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(50, 5, 0, 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select login as the owner or employee \nfirst to continue.",
                  style: blackFontStyle2,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Login.png"),
                    ),
                    border: Border.all(color: Colors.white)),
              ),
              SizedBox(
                height: 100,
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
                      Get.to(LoginAsOwnerPage());
                    },
                    child: Text(
                      "Login as Owner",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Or',
                style: blackFontStyle2,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 45.0,
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)))),
                    onPressed: () {
                      Get.to(LoginAsEmployePage());
                    },
                    child: Text(
                      "LogIn as Employee",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: blackFontStyle2,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.to(SignUpPage());
                      },
                      child: Text(
                        "Sign Up",
                        style: blackFontStyle2.copyWith(color: blueColor),
                      ))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
