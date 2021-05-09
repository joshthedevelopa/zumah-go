import 'package:go/views/vendor_details.dart';

import 'imports.dart';

void main() {
  runApp(ZumahGO());
}

class ZumahGO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zumah Go',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

