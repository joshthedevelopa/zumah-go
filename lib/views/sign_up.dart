import '../imports.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                            Text("Sign Up", style: TextStyle(color: k_mainColor, fontWeight: FontWeight.bold, fontSize: k_fontSize * 2)),
                            SizedBox(height: k_size * 2),
                            BorderlessInput(
                              label: "Name",
                              icon: Icons.person,
                            ),
                            BorderlessInput(
                              label: "Contact",
                              icon: Icons.lock,
                            ),
                            BorderlessInput(
                              label: "Password",
                              icon: Icons.person,
                            ),
                            BorderlessInput(
                              label: "Confirm Password",
                              icon: Icons.lock,
                            ),
                            SizedBox(height: k_size * 4),
                            Material(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(k_radius)),
                              color: k_mainColor,
                              child: InkWell(
                                onTap: () {},
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: k_size * 2, horizontal: k_size),
                                    child: Center(child: Text("Sign Up", style: TextStyle(fontSize: k_fontSize * 1.1, fontWeight: FontWeight.w500, color: Colors.white))),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: k_size),
                      InkWell(
                        onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn())),
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.all(k_size * 2),
                            child: Center(child: Text("Having an account?", style: TextStyle(fontSize: k_fontSize, color: k_mainGreyColor))),
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

