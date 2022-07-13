import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //form key
  final _formKey = GlobalKey<FormState>();
  //editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // validator: () {},
      onSaved: (value)
      {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );

    final passwordFiled = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true, // hide password
      onSaved: (value)
      {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );

    final loginBtn = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromARGB(255, 9, 47, 16),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: const Text("Login", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color.fromARGB(255, 255, 255, 255)
        ),
        textAlign: TextAlign.center,),
      ),
    );
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 200,
                    child: Image.asset("assets/images/logo.png",
                    fit: BoxFit.contain,)
                  ),
                  const SizedBox(height: 45),
                  emailField,
                  const SizedBox(height: 25),
                  passwordFiled,
                  const SizedBox(height: 35),
                  loginBtn,
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Don't have an account?"),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: const Text("SignUp",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),),
                      )
                    ],
                  )
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}