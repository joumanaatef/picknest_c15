import 'package:flutter/material.dart';
import 'package:picknest/ui/home/tabs/profile/profile_field.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(width * 0.05),
          child: ListView(
            children: [
              const Text(
                'Welcome, Asmaa',
                style: TextStyle(
                  color: Color(0xff02412F),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: height * 0.005),
              const Text(
                'asmaadarwish581@gmail.com',
                style: TextStyle(
                  color: Color(0xff036247),
                  fontSize: 14,
                ),
              ),
              SizedBox(height: height * 0.03),

              ProfileField(
                label: 'Your full name',
                value: 'Asmaa Darwish Gharib',
              ),
              ProfileField(
                label: 'Your E-mail',
                value: 'asmaadarwish581@gmail.com',
              ),
              ProfileField(
                label: 'Your password',
                value: '**********',
              ),
              ProfileField(
                label: 'Your mobile number',
                value: '0120464436',
              ),
              ProfileField(
                label: 'Your Address',
                value: 'Obour City, Cairo',
              ),

              SizedBox(height: height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
