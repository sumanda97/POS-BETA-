part of 'widget.dart';

class CostumBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  CostumBottomNavBar({this.selectedIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Home Button
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/home" +
                          ((selectedIndex == 0) ? '.png' : "_normal.png")),
                      fit: BoxFit.contain)),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          // Favorite Button
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              margin: EdgeInsets.symmetric(horizontal: 83),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/favorite" +
                          ((selectedIndex == 1) ? '.png' : "_normal.png")),
                      fit: BoxFit.contain)),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          // Input Button
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/input" +
                          ((selectedIndex == 2) ? '.png' : "_normal.png")),
                      fit: BoxFit.contain)),
            ),
          ),
        ],
      ),
    );
  }
}
