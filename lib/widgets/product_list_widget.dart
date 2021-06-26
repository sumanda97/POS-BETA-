part of 'widget.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductItem item;
  final Animation animation;
  final VoidCallback onClicked;

  ProductItemWidget({
    @required this.item,
    @required this.animation,
    @required this.onClicked,
  });

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white70,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          leading: Container(
            height: 100,
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(item.picturePath), fit: BoxFit.cover)),
          ),
          title: Text(item.name, style: blackFontStyle2.copyWith(fontSize: 20)),
          subtitle: Text(
              NumberFormat.currency(
                      symbol: "IDR ", decimalDigits: 0, locale: "id/ID")
                  .format(item.price),
              style: blackFontStyle2.copyWith(fontSize: 14)),
          trailing: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: blueColor,
              ),
              child: Icon(Icons.add)),
          onTap: onClicked,
        ),
      );
}
