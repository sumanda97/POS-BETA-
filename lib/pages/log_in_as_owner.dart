part of 'pages.dart';

class LoginAsOwnerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return GeneralPage(
      title: "Login As Owner",
      subtitle: "Make Sure Your Email is Valid",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        // EMAIL
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Email or Phone Number",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white),
                color: Colors.grey[300]),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your email or phone number'),
            ),
          ),
          // EMAIL
          // PASSWORD
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Password",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white),
                color: Colors.grey[300]),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'At least 8 characters'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Send OTP",
                  style: blackFontStyle2.copyWith(
                      fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // BUTTON1
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      print("EMAIL");
                    },
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      elevation: 1,
                      minimumSize: Size(150, 50),
                    ),
                    icon: Icon(Icons.email),
                    label: Text("Email")),
                ElevatedButton.icon(
                    onPressed: () {
                      print("WHATAPP");
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 1,
                      minimumSize: Size(150, 50),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                    icon: Icon(Icons.people_rounded),
                    label: Text("WhatsApp")),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // BUTTON 2
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      print("SMS");
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 1,
                      minimumSize: Size(150, 50),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                    icon: Icon(Icons.sms),
                    label: Text("SMS")),
                ElevatedButton.icon(
                    onPressed: () {
                      print("MISSEDCALL");
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 1,
                      minimumSize: Size(150, 50),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                    icon: Icon(Icons.call),
                    label: Text("Missed Call")),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // LOGIN BUTTON
          Container(
            width: double.infinity,
            height: 50.0,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[300],
                    onPrimary: Colors.blue,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)))),
                onPressed: () {
                  Get.to(HomePage());
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                      color: Colors.blue, fontWeight: FontWeight.w500),
                )),
          ),
          SizedBox(
            height: 15,
          ),
          // FORGOT PASSWORD
          Center(
            child: GestureDetector(
              onTap: () {
                print("Forgot Pssword");
              },
              child: Text("Forgot Password ?",
                  style: blackFontStyle2.copyWith(color: blueColor)),
            ),
          ),
        ],
      ),
    );
  }
}
