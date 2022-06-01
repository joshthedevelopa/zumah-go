import '../imports.dart';

class VendorDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(k_size * 2.5),
                child: Row(
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back_ios), color: k_mainGreyColor, onPressed: () => Navigator.pop(context)),
                    Expanded(
                      child: Center(child: Text("VENDOR", style: TextStyle(color: k_mainColor, fontWeight: FontWeight.w500, fontSize: k_fontSize * 1.4))),
                    ),
                    IconButton(
                      icon: Icon(Icons.call), 
                      color: k_mainColor, 
                      onPressed: () {}
                    ),
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

              SizedBox(height: k_size),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: k_size, vertical: k_size * 2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: k_size * .5, horizontal: k_size),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("DESCRIPTION", style: TextStyle(color: Colors.black, fontSize: k_fontSize * 1.2, fontWeight: FontWeight.w500)),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: k_mainGreyColor, width: 1.0),
                              borderRadius: BorderRadius.circular(k_radius * .4)
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(k_size),
                              child: Row(
                                children: [
                                  Icon(Icons.star_rate, color: Colors.green),
                                  Text("4.5")
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: k_size, vertical: k_size),
                      child: Text("Lore fdaklfjdafka dfjak adfjla kadjfkdf;lfjk dfj kjd fjhfj hdil fhkjdh ludfjabe juyhmi alufhekj hlialssdjfab hkfebfugfa"),
                    ),

                    SizedBox(height: k_size * 3),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: k_size * 1.5, horizontal: k_size),
                          child: Text("PRODUCT AND SERVICES", style: TextStyle(color: Colors.black, fontSize: k_fontSize * 1.2, fontWeight: FontWeight.w500)),
                        ),

                        Container(
                          width: double.infinity,
                          child: ListView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (context, index) => Container(
                              clipBehavior: Clip.hardEdge,
                              margin: EdgeInsets.symmetric(vertical: k_size * 1.5, horizontal: k_size * 2),
                              decoration: BoxDecoration(
                                border: Border.all(color: k_mainGreyColor.withOpacity(0.2)),
                                borderRadius: BorderRadius.circular(k_radius * .5)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 200,
                                    color: k_mainGreyColor.withOpacity(0.2)
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(k_size),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Fried Rice with full chicken", style: TextStyle(fontSize: k_fontSize * 1.1, fontWeight: FontWeight.w500)),
                                            Padding(
                                              padding: EdgeInsets.symmetric(vertical: k_size * .5, horizontal: k_size),
                                              child: Text("Cape Coast, Abura", style: TextStyle(fontSize: k_fontSize * 0.9)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}