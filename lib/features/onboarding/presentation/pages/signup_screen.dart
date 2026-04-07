import 'package:exam_project/features/onboarding/presentation/pages/login.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _DarssState();
}

class _DarssState extends State<SignupScreen> {
  final controller = PageController();
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          SizedBox(
            height: 502,
            child: PageView(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  page = value;
                });
              },
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/i.webp"),
                    Text(
                      "Gain total control",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "of your money",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "become your own money manager",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "and make every cent count",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/i.webp"),
                    Text(
                      "Know where your",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Money goes",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "track your transaction easily",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "with categories and financal repost",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/i.webp"),
                    Text(
                      "Planning ahead",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    Text(
                      "setup your budget for each category",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "so your in control ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: page == 0 ? Colors.purple : Colors.grey,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: page == 1 ? Colors.purple : Colors.grey,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: page == 2 ? Colors.purple : Colors.grey,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 239, 239),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    if (page != 0) {
                      controller.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.bounceIn,
                      );
                    }
                  },
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.purple, fontSize: 22),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
