import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPassword = false;
  bool changeColour = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Color.fromARGB(255, 208, 27, 166),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(child: Image.asset("assets/images/cats.png")),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Welcome Back!",
              style: TextStyle(
                  fontFamily: "Questrial",
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 27.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email/Phone number",
                  style: TextStyle(
                      fontFamily: "Questrial",
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 56,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 227, 226, 226),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0, top: 4),
                child: TextFormField(
                  cursorColor: const Color.fromARGB(255, 208, 27, 166),
                  style:
                      const TextStyle(color: Color.fromARGB(255, 208, 27, 166)),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Enter your email or phone number",
                    hintStyle: TextStyle(
                      fontFamily: "Questrial",
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 27.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(
                      fontFamily: "Questrial",
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 56,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 227, 226, 226),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0, top: 4),
                child: TextFormField(
                  cursorColor: const Color.fromARGB(255, 208, 27, 166),
                  style:
                      const TextStyle(color: Color.fromARGB(255, 208, 27, 166)),
                  obscureText: showPassword ? true : false,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          changeColour = true;
                          showPassword = !showPassword;
                        });
                      },
                      icon: showPassword
                          ? Icon(
                              Icons.visibility_off,
                              color: changeColour
                                  ? const Color.fromARGB(255, 208, 27, 166)
                                  : Colors.grey,
                            )
                          : Icon(
                              Icons.visibility,
                              color: changeColour
                                  ? const Color.fromARGB(255, 208, 27, 166)
                                  : Colors.grey,
                            ),
                    ),
                    hintText: "Enter your password",
                    hintStyle: const TextStyle(
                      fontFamily: "Questrial",
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 18),
                child: TextButton(
                  style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent),
                    foregroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 208, 27, 166)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Forget password?",
                    style: TextStyle(fontFamily: "Questrial", fontSize: 17),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 208, 27, 166),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)),
                  padding: const EdgeInsets.fromLTRB(137, 14, 137, 14)),
              onPressed: () {
                debugPrint("Sign in Successfull!");
              },
              child: const Text(
                "Sign In",
                style: TextStyle(
                    fontFamily: "Questrial",
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 19, fontFamily: "Questrial"),
                ),
                TextButton(
                  style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent),
                    foregroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 208, 27, 166),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Sign in",
                    style: TextStyle(fontSize: 19, fontFamily: "Questrial"),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 34,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 100,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  "or continue with",
                  style: TextStyle(fontSize: 19, fontFamily: "Questrial"),
                ),
                const SizedBox(
                  width: 13,
                ),
                Container(
                  height: 2,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 65,
                    width: 140,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 225, 224, 224),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          height: 39,
                        ),
                        const Text(
                          "Google",
                          style:
                              TextStyle(fontSize: 19, fontFamily: "Questrial"),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 65,
                    width: 153,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 225, 224, 224),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/facebook.png",
                          height: 39,
                        ),
                        const Text(
                          "Facebook",
                          style:
                              TextStyle(fontSize: 19, fontFamily: "Questrial"),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
