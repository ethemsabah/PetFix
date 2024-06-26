import 'package:flutter/material.dart';
import 'package:petpix/Components/color.dart';
import 'package:petpix/backend/datahelper.dart';
import 'package:petpix/backend/textfield.dart';
import 'package:petpix/onboardingscreens/fullscreen.dart';
import 'package:petpix/addpost/home_screen.dart';
import 'package:petpix/pages/loginscreens/passwordchange.dart';
import 'package:petpix/pages/loginscreens/signup_page.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late DatabaseHelper _databaseHelper;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _databaseHelper = DatabaseHelper();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    // Kullanıcı bilgilerini kontrol et
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Lütfen tüm alanları doldurun')),
      );
      return;
    }

    bool loggedIn = await _databaseHelper.login(email, password);
    if (loggedIn) {
      // Başarılı giriş
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FullScreen()),
      );
    } else {
      // Başarısız giriş
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Geçersiz email veya şifre')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: Image.asset('model/assets/petpix.png'),
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset('model/assets/Group.png'),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: emailController,
                focusNode: emailFocusNode,
                hintText: 'Email',
                prefixIcon: Icons.email,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: passwordController,
                focusNode: passwordFocusNode,
                hintText: 'Password',
                prefixIcon: Icons.lock,
                obscureText: true, // Parolanın gizlenmesini sağlar
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangePasswordScreen(),
                    ),
                  );
                },
                child: Text(
                  'Şifrenizi mi unuttunuz?',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: _login,
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    'Giriş Yap',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Hesabınız yok mu? ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text(
                      "Kayıt Ol",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
