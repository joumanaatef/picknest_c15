import 'package:flutter/material.dart';
import '../../utils/app_routes.dart';

class RegisterScreen extends StatelessWidget {
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
              SizedBox(height: height * 0.05),

              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black, size: 28),
                onPressed: () => Navigator.pop(context),
              ),

              const Center(
                child: Text(
                  'PickNest',
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'Calligraffitti',
                    color: Color(0xFF02412F),
                  ),
                ),
              ),

              SizedBox(height: height * 0.025),

              const Text(
                "Full Name",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              SizedBox(height: height * 0.015),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your full name",
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

              SizedBox(height: height * 0.025),

              const Text(
                "Mobile Number",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              SizedBox(height: height * 0.015),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Enter your mobile num",
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

              SizedBox(height: height * 0.025),

              const Text(
                "E-mail address",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              SizedBox(height: height * 0.015),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter your email address",
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

              SizedBox(height: height * 0.025),

              const Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
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

              SizedBox(height: height * 0.065),

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.homeScreen);
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: height * 0.022),
                  decoration: BoxDecoration(
                    color: Color(0xFF02412F),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
