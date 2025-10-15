import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn_ina/screen/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatefulWidget {
  static String id = "signUp";
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool passwordVisibility = true;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Image.asset(
                  "assets/img/signup.png",
                  height: 150,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Masukkan email",
                    hintStyle: TextStyle(color: Colors.green.shade400),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.green.shade400,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.green.shade400),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.green.shade400),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  validator: validatorPassword,
                  keyboardType: TextInputType.text,
                  obscureText: passwordVisibility,
                  decoration: InputDecoration(
                    hintText: "Masukkan password",
                    hintStyle: TextStyle(color: Colors.green.shade400),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.green.shade400,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisibility = !passwordVisibility;
                        });
                      },
                      icon: Icon(
                        passwordVisibility
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.green.shade400,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.green.shade400),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.green.shade400),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Masukkan nomor hp",
                    hintStyle: TextStyle(color: Colors.green.shade400),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.green.shade400,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.green.shade400),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.green.shade400),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    validationCheck();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade400,
                  ),
                  child: const SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Center(
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                const Text("atau login dengan"),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green.shade400,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green.shade400,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green.shade400,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                RichText(
                  text: TextSpan(
                    text: "Tidak punya akun? ",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Daftar",
                        style: TextStyle(
                          color: Colors.green.shade400,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? validatorPassword(String? value) {
    if (value!.length < 6) {
      return "Password harus lebih besar dari 5 karakter";
    } else {
      return null;
    }
  }

  void validationCheck() {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Berhasil daftar"),
        ),
      );
      /* Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      ); */
      Navigator.pushReplacementNamed(
        context,
        HomeScreen.id,
      );
    }
  }
}
