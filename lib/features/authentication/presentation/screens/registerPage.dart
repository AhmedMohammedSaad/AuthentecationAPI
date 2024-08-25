import 'package:auth_api/features/authentication/presentation/components/TextFormatField.dart';
import 'package:auth_api/features/authentication/presentation/components/passwordFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static String routName = "registerPage";
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> nkey = GlobalKey();
  GlobalKey<FormState> ekey = GlobalKey();
  GlobalKey<FormState> pkey = GlobalKey();
  GlobalKey<FormState> pwkey = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/giphy.gif"),
              )),
            ),
            TextFromatField(
              controller: name,
              label: "Name",
              fKey: nkey,
            ),
            TextFromatField(
              controller: email,
              label: "Email",
              fKey: ekey,
            ),
            TextFromatField(
              controller: phone,
              label: "Phone",
              fKey: pkey,
            ),
            PasswordFormatField(
              controller: password,
              fKey: pwkey,
              label: "Password",
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {},
              child: const Text(
                "Register",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
