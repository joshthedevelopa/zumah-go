import '../imports.dart';

class VendorDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(k_size * 2.5),
                    decoration: BoxDecoration(
                      color: k_mainColor,
                      borderRadius: BorderRadius.circular(k_radius)
                    ),
                    child: Row(
                      children: [
                        IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: k_size * 2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(k_radius)),
                    child: SizedBox(
                      width: double.infinity,
                      height: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: k_size, vertical: k_size * 2.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(k_size),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Categories", style: TextStyle(color: Colors.black, fontSize: k_fontSize * 1.2, fontWeight: FontWeight.w500)),
                              Row(
                                children: [
                                  Icon(Icons.star_rate),
                                  Text("4.5")
                                ],
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: k_size, vertical: k_size),
                          child: Text("Lore fdaklfjdafka dfjak adfjla kadjfkdf;lfjk dfj kjd fjhfj hdil fhkjdh ludfjabe juyhmi alufhekj hlialssdjfab hkfebfugfa"),
                        ),

                        Padding(
                          padding: EdgeInsets.all(k_size),
                          child: Text("Products and Services", style: TextStyle(color: Colors.black, fontSize: k_fontSize, fontWeight: FontWeight.w500)),
                        ),

                        Container(
                          width: double.infinity,
                          child: ListView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (context, index) => CustomListTile(
                              margin: EdgeInsets.all(k_size),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Container(
                padding: EdgeInsets.all(k_size),
                decoration: BoxDecoration(
                  color: k_mainColor,
                  borderRadius: BorderRadius.circular(k_radius * 1.4).subtract(BorderRadius.only(topRight: Radius.circular(k_radius * 1.4)))
                ),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(child: Text("")),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(k_radius).subtract(BorderRadius.only(topRight: Radius.circular(k_radius / 1.2)))
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(k_size * 1.5),
                          child: SizedBox(
                            width: 80.0,
                            child: Icon(Icons.call, color: k_mainColor,),
                          ),
                        ),
                      ),
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
}