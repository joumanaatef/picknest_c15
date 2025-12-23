import 'package:flutter/material.dart';
import 'package:picknest/utils/app_routes.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF0E7E5),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.09),

              const Center(
                child: Text(
                  'PickNest',
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'Calligraffitti',
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF02412F),
                  ),
                ),
              ),

              SizedBox(height: height * 0.01),

              const Text(
                'Welcome Back To PickNest',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Please sign in with your mail',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: height * 0.04),

              const Text(
                "User Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: height * 0.015),

              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: width * 0.04,
                    vertical: height * 0.02,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: height * 0.04),

              const Text(
                "Password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: height * 0.015),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: width * 0.04,
                    vertical: height * 0.02,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              SizedBox(height: height * 0.04),

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.homeScreen);
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: height * 0.022),
                  decoration: BoxDecoration(
                    color: Color(0xFF003D2B),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: height * 0.03),

              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.registerScreen);
                },
                child:Center(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 14),
                      children: [
                        TextSpan(text: "Don't have account? "),
                        TextSpan(
                          text: "Create Account",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
