import 'package:exercise1/Widgets/customtextformfield.dart';
import 'package:exercise1/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isObscure = true;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.amber,
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: 10,
                    right: 10,
                  ),
                  minimumSize: const Size(10, 10),
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Register',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Name",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            CustomTextFormField(
              controller: _nameController,
              hintText: "Enter your name",
              obscureText: false,
              icon: Icons.person,
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Email",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            CustomTextFormField(
              controller: _emailController,
              hintText: "Enter your email",
              obscureText: false,
              icon: Icons.email,
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: TextFormField(
                obscureText: _isObscure,
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  hintStyle: Theme.of(context).textTheme.bodyText1,
                  prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                  errorBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    color: Colors.grey,
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Re-Enter Password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: TextFormField(
                obscureText: _isObscure,
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: "Re-Enter your password",
                  hintStyle: Theme.of(context).textTheme.bodyText1,
                  prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                  errorBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    color: Colors.grey,
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Center(
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onTap: () {
                print('Sign up Button Pressed');
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Login(),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => Login(),
                        ),
                      );
                    },
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