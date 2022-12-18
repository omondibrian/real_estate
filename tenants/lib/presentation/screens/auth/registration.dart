import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenants/presentation/screens/auth/log_in.dart';
import 'package:tenants/presentation/utils.dart';
import 'package:tenants/presentation/widgets/button.dart';
import 'package:tenants/presentation/widgets/input.dart';

import '../../../application/tenant/bloc/tenant_bloc.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    void register() async {
      if (_formKey.currentState!.validate()) {
        context.read<TenantBloc>().add(
              TenantEvent.signUp(
                name: _nameController.text,
                email: _emailController.text,
                phoneNumber: _phoneController.text,
                password: _passwordController.text,
                role: "Tenant",
              ),
            );
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
              const SizedBox(
                height: 70,
              ),
              const Text('Register to continue using Realtors'),
              const SizedBox(
                height: 70,
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
                            controller: _nameController,
                            hintText: 'Name',
                            validator: requiredValidator,
                            icon: Icons.verified_user,
                            keyboardType: TextInputType.emailAddress,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: DefaultInput(
                            controller: _emailController,
                            hintText: 'email',
                            validator: emailValidator,
                            icon: Icons.email_outlined,
                            keyboardType: TextInputType.emailAddress,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: DefaultInput(
                            controller: _phoneController,
                            hintText: 'phoneNumber',
                            validator: requiredValidator,
                            icon: Icons.phone,
                            keyboardType: TextInputType.emailAddress,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: PasswordField(
                            _passwordController,
                          )),
                     
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
                                'existing  User ? ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: ((context) => LogIn()),
                                    ),
                                  );
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
