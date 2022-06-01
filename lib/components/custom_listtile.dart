import '../imports.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({this.action, this.title, this.subtitle, this.margin}) : _spacing = k_size;

  final double _spacing;
  final String title, subtitle;
  final EdgeInsets margin;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: margin ?? EdgeInsets.symmetric(horizontal: _spacing * 2.5, vertical: _spacing),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(bottomLeft: Radius.zero, bottomRight: Radius.circular(k_radius), topLeft: Radius.circular(k_radius), topRight: Radius.zero),
        boxShadow: [BoxShadow(color: Colors.blueGrey.withOpacity(0.1), blurRadius: 0.2, spreadRadius: 0.2)]
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: action,
          child: IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.3),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.zero, bottomRight: Radius.circular(k_radius), topLeft: Radius.circular(k_radius), topRight: Radius.zero)
                  ),
                  child: Center(child: Text("T"),),
                ),
                SizedBox(width: k_size),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(k_size).copyWith(right: k_size * 1.4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("$title", maxLines: 1, style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 1.1, fontSize: k_fontSize * .95),),
                        Text("$subtitle", maxLines: 1, style: TextStyle( fontSize: k_fontSize * .8, color: k_mainGreyColor)),
                        SizedBox(height: k_size),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("25m", style: TextStyle(color: k_mainGreyColor, fontSize: k_fontSize * .8)),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: k_size * .8),
                              child: CircleAvatar( backgroundColor: k_mainGreyColor, radius: 2.0),
                            ),
                            Text("25 comments", style: TextStyle(color: k_mainGreyColor, fontSize: k_fontSize * .8)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}