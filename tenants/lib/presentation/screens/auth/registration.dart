import 'package:flutter/material.dart';
import 'package:tenants/presentation/utils.dart';
import 'package:tenants/presentation/widgets/button.dart';
import 'package:tenants/presentation/widgets/input.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    void register() async {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        "Please wait...",
      )));
      if (_formKey.currentState!.validate()) {
        // final res = await Auth.loginUser({
        //   "email": _emailController.text,
        //   "password": _passwordController.text
        // });
        // res.fold((l) {
        //   Navigator.of(context).popUntil((route) => route.isFirst);
        //   // Navigator.of(context).pushNamed(AppRoutes.home);
        //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        //       content: Text(
        //     "Login successfuly",
        //     ),
        //   ));
        // }, (error) {
        //   ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(
        //       content: Text(
        //         error.message,
        //         style: TextStyle(color: Theme.of(context).errorColor),
        //       ),
        //       duration: SNACKBARDURATION,
        //     ),
        //   );
        // });
      }
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          "SignUp",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Center(
              //   heightFactor: 3,
              //   child: Image.asset(
              //     'assets/images/truck.png',
              //     height: 50,
              //     width: 195,
              //   ),
              // ),

              const Text('Register to continue using Realtors'),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: DefaultInput(
                            controller: _emailController,
                            hintText: 'email',
                            validator: emailValidator,
                            icon: Icons.email_outlined,
                            keyboardType: TextInputType.emailAddress,
                          )),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: PasswordField(
                            _passwordController,
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'forgot password',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: DefaultButton(
                          handlePress: register,
                          text: 'Register',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'New a User ? ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              InkWell(
                                onTap: () {
                                  // Navigator.pushNamed(
                                  //     context, AppRoutes.signup);
                                },
                                child: const Text(
                                  'Sign in',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
