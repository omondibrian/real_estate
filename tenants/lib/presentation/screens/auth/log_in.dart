import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenants/application/tenant/bloc/tenant_bloc.dart';
import 'package:tenants/domain/Tenant/entity/tenant_credentials.dart';
import 'package:tenants/presentation/realtors.dart';
import 'package:tenants/presentation/utils.dart';
import 'package:tenants/presentation/widgets/button.dart';
import 'package:tenants/presentation/widgets/input.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    void login() async {
      if (_formKey.currentState!.validate()) {
        context.read<TenantBloc>().add(
              TenantEvent.signIn(
                TenantCredentials(
                  _emailController.text,
                  _passwordController.text,
                ),
              ),
            );
      }
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          "Signin",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      backgroundColor: Colors.white,
      body: BlocListener<TenantBloc, TenantState>(
        listener: (context, state) {
          state.map(
            initial: (value) {},
            loadingInProgress: (value) {
              if (value.state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Submitting in progress, please wait...",
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                  ),
                );
              }
            },
            applicationErrors: (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    value.msg,
                    style: TextStyle(color: Theme.of(context).errorColor),
                  ),
                ),
              );
            },
            snackBarMsgs: (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    value.msg,
                    style: const TextStyle(color: Colors.greenAccent),
                  ),
                ),
              );
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: ((context) => const Realtors()),
                ),
              );
            },
          );
        },
        child: SafeArea(
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
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Welcome Back !',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text('Login to continue using Realtors'),
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
                            handlePress: login,
                            text: 'Log in',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('New a User ? ',
                                    style: TextStyle(color: Colors.grey)),
                                InkWell(
                                  onTap: () {
                                    // Navigator.pushNamed(
                                    //     context, AppRoutes.signup);
                                  },
                                  child: const Text('Sign up for a new account',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}
