import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerificationInputScreen extends StatefulWidget {
  @override
  State<VerificationInputScreen> createState() =>
      _VerificationInputScreenState();
}

class _VerificationInputScreenState extends State<VerificationInputScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 15,
      height: 15,
      textStyle: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text("Verification", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              "Enter your\nVerification Code",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),

            
            Pinput(
              length: 6,
              mainAxisAlignment: MainAxisAlignment.start,
              defaultPinTheme: defaultPinTheme,
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(color: Colors.transparent),
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  color: Color(0xFF7F3DFF),
                  shape: BoxShape.circle,
                ),
              ),
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),

            SizedBox(height: 30),
            Text(
              "04:59",
              style: TextStyle(
                color: Color(0xFF7F3DFF),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "We send verification code to your email brajaoma*@gmail.com. You can check your inbox.",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 15),
            Text(
              "I didn't received the code? Send again",
              style: TextStyle(
                color: Color(0xFF7F3DFF),
                decoration: TextDecoration.underline,
              ),
            ),

            Spacer(),
            _buildVerifyButton(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildVerifyButton() {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF7F3DFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          "Verify",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
