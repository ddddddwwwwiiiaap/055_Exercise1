import 'package:exercise1/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isObscure = true;
  bool _isObscureConfirm = true;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController = TextEditingController();

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
            Container(
              margin: const EdgeInsets.only(right: 5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/signup.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
            Padding(
              padding:
                  const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0),
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  hintStyle: Theme.of(context).textTheme.bodyText1,
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                ),
              ),
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
            Padding(
              padding:
                  const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  hintStyle: Theme.of(context).textTheme.bodyText1,
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                ),
              ),
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
                obscureText: _isObscureConfirm,
                controller: _passwordConfirmController,
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
                        _isObscureConfirm = !_isObscureConfirm;
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
