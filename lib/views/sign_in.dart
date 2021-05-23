import '../imports.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: EdgeInsets.all(k_size * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Sign In", style: TextStyle(color: k_mainColor, fontWeight: FontWeight.bold, fontSize: k_fontSize * 2)),
                            SizedBox(height: k_size * 2),
                            BorderlessInput(
                              label: "Contact",
                              icon: Icons.person,
                            ),
                            BorderlessInput(
                              label: "Password",
                              icon: Icons.lock,
                            ),
                            SizedBox(height: k_size * 4),
                            Material(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(k_radius)),
                              color: k_mainColor,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                },
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: k_size * 2, horizontal: k_size),
                                    child: Center(child: Text("Sign In", style: TextStyle(fontSize: k_fontSize * 1.1, fontWeight: FontWeight.w500, color: Colors.white))),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp())),
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.all(k_size * 2),
                            child: Center(child: Text("Create An Account", style: TextStyle(fontSize: k_fontSize, color: k_mainGreyColor))),
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

