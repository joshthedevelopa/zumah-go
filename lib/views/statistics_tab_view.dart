import '../imports.dart';

class StaticticsTabView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: k_size * .8, horizontal: k_size * 2.5),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: k_mainColor.withOpacity(.4)))
          ),
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.arrow_back_ios), color: k_mainColor, onPressed: () => Navigator.pop(context)),
              Expanded(
                child: Center(child: Text("Delivery Statistics", style: TextStyle(color: k_mainColor, fontWeight: FontWeight.w500, fontSize: k_fontSize))),
              ),
              IconButton(icon: Icon(Icons.calendar_today), color: k_mainColor, onPressed: () {}),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(k_size),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(k_size),
                      child: Text("12 Dec - 24 Feb", style: TextStyle(color: Colors.blueGrey, fontSize: k_fontSize * 1.5)),
                    ),
                  ),

                  _statsCard(
                    title: "Total number of deliveries",
                    items: [
                      {
                        "title": "",
                        "value": "24"
                      }
                    ]
                  ),

                  _statsCard(
                    title: "Total amount spent on deliveries",
                    items: [
                      {
                        "title": "",
                        "value": "GHC 200.00"
                      }
                    ]
                  ),

                  _statsCard(
                    title: "Type of Deliveries",
                    items: [
                      {
                        "title": "Errands",
                        "value": "2"
                      },
                      {
                        "title": "Package Pick-up",
                        "value": "10"
                      },
                      {
                        "title": "Food Vendor",
                        "value": "5"
                      },
                    ]
                  ),

                  _statsCard(
                    title: "Discount",
                    items: [
                      {
                        "title": "",
                        "value": "No Discount"
                      },
                    ]
                  ),

                  _statsCard(
                    title: "Point of Delivery",
                    items: [
                      {
                        "title": "SRC Hall",
                        "value": "4"
                      },
                      {
                        "title": "CALC",
                        "value": "1"
                      },
                      {
                        "title": "Unity Hall",
                        "value": "5"
                      },
                    ]
                  ),

                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 50)
      ],
    );
  }

  Padding _statsCard({String title, List<Map> items}) {
    return Padding(
      padding: EdgeInsets.all(k_size).copyWith(bottom: k_size * 1.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$title", style: TextStyle(color: Colors.blueGrey.withOpacity(0.5), fontSize: k_fontSize * 1.1)),
          Card(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(k_size * 2),
                child: Column(
                  children: [
                    ...((items ?? []).map((e) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("${e['title']}", style: TextStyle(fontSize: k_fontSize * 1.1),)),
                        SizedBox(width: k_size),
                        Center(child: Text("${e['value']}", style: TextStyle(fontSize: k_fontSize * 1.6)))
                      ],
                    )).toList()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}