import '../imports.dart';

class HomeTabView extends StatelessWidget {

  Row _subtitleList({String label}) {
    return Row(
      children: [
        CircleAvatar(radius: 2.5, backgroundColor: k_mainColor),
        SizedBox(width: k_size),
        Text("$label", style: TextStyle(fontSize: k_fontSize)),
      ],
    );
  }

  Widget _serviceCategory({String title, Function action, Image display, EdgeInsets padding}) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: k_size),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: action,
          child: SizedBox(
            width: 90,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffecfae3),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.zero, 
                      bottomRight: Radius.circular(k_radius), 
                      topLeft: Radius.circular(k_radius), 
                      topRight: Radius.circular(k_radius),
                    )
                  ),
                  width: 90,
                  height: 80,
                  child: display
                ),
                Padding(
                  padding: EdgeInsets.only(top: k_size * .5),
                  child: Text("$title", maxLines: 2,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: k_size * 2, horizontal: k_size * 2.5),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text("Zumah", style: TextStyle(fontSize: k_fontSize * 1.8, fontWeight: FontWeight.w600, color: Colors.black)),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: k_size / 4),
                        width: 12,
                        height: 3.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.black, k_mainColor],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight
                          ),
                        ),
                      ),
                      Text("Go", style: TextStyle(fontSize: k_fontSize * 1.8, fontWeight: FontWeight.w600, color: k_mainColor)),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.notifications, color: k_mainColor,),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          Card(
            margin: EdgeInsets.symmetric(horizontal: k_size * 2.5),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(k_radius)),
            child: SizedBox(
              width: double.infinity,
              height: 200,
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: k_size * 4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: k_size * 2.5).copyWith(bottom: k_size * 2),
                  child: Text("Categories", style: TextStyle(color: Colors.black, fontSize: k_fontSize * 1.2, fontWeight: FontWeight.w500)),
                ),
                Container(
                  width: double.infinity,
                  child: IntrinsicHeight(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          _serviceCategory(
                            title: "Charges", 
                            padding: EdgeInsets.symmetric(horizontal: k_size).copyWith(left: k_size * 2.5),
                            action: () {

                              showModalBottomSheet(
                                context: context, 
                                isDismissible: true,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                builder: (context) {
                                  return Center(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(vertical: k_size, horizontal: k_size * 2).copyWith(top: 40.0),
                                      padding: EdgeInsets.symmetric(vertical: k_size * 2),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(k_radius * 1.5)
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(k_size * 2),
                                            child: Text("Delivery Charges", style: TextStyle(color: k_mainColor, fontWeight: FontWeight.w500, fontSize: k_fontSize * 1.4)),
                                          ),
                                        
                                          ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: deliveryCharges.length,
                                            itemBuilder: (context, index) => ListTile(
                                              title: Text("GHC${deliveryCharges[index]["price"].toStringAsFixed(2)}", style: TextStyle(fontSize: k_fontSize * 1.2, fontWeight: FontWeight.w500)),
                                              subtitle: Padding(
                                                padding: EdgeInsets.symmetric(vertical: k_size).copyWith(left: k_size * 2),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    ...(deliveryCharges[index]["coverage"].map((cover) =>  _subtitleList(label: "$cover")).toList())
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              );

                            }
                          ),

                          _serviceCategory(title: "Stores"),
                          _serviceCategory(title: "Moltivation"),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: k_size * 2.5).copyWith(bottom: k_size * 2),
                  child: Text("Best Stores", style: TextStyle(color: Colors.black, fontSize: k_fontSize * 1.2, fontWeight: FontWeight.w500)),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 3,
                  itemBuilder: (context, index) => CustomListTile(action: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => VendorDetails()));
                  },),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}