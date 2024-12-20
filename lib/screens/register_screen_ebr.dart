import 'package:examen_ebr/screens/list_view_screen_ebr.dart';
import 'package:examen_ebr/widgets/custom_text_form_field_ebr.dart';
import 'package:flutter/material.dart';

class RegisterScreenEbr extends StatefulWidget {
  const RegisterScreenEbr({super.key});

  @override
  State<RegisterScreenEbr> createState() => _RegisterScreenEbrState();
}

class _RegisterScreenEbrState extends State<RegisterScreenEbr> {
  bool _sliderEnabled = false;
  bool _nombreValido = false;
  bool _apellidosValido = false;
  bool _emailValido = false;
  bool _passwordValido = false;

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': '',
      'apellidos': '',
      'email': '',
      'password': '',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('vueling'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Form(
            key: myFormKey,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: CustomTextFormField(
                    hintText: 'Nombre',
                    obscureText: false,
                    formProperty: 'nombre',
                    formValues: formValues,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'No puede estar vacio';
                      } else if (value.length < 6) {
                        return 'Debe de ser mayor de 6';
                      } else {
                        _nombreValido = true;
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: CustomTextFormField(
                    hintText: 'Apellidos',
                    obscureText: false,
                    formProperty: 'apellidos',
                    formValues: formValues,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'No puede estar vacio';
                      } else if (value.length < 10) {
                        return 'Debe de ser mayor de 10';
                      } else {
                        _apellidosValido = true;
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: CustomTextFormField(
                      hintText: 'Email',
                      obscureText: false,
                      formProperty: 'email',
                      keyboardType: TextInputType.emailAddress,
                      formValues: formValues,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'El campo no puede estar vacio';
                        } else {
                          _emailValido = true;
                        }
                      }),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: CustomTextFormField(
                    hintText: 'Contraseña',
                    helperText: '8-20 caracteres',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'No puede estar vacio';
                      } else if (value.length < 6) {
                        return 'Debe de ser mayor de 6';
                      } else {
                        _passwordValido = true;
                      }
                    },
                  ),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('Acepto terminos y condiciones de uso'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Checkbox(
                        value: _sliderEnabled,
                        onChanged: (value) {
                          _sliderEnabled = value ?? true;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_sliderEnabled == true &&
                          _nombreValido == true &&
                          _apellidosValido == true &&
                          _emailValido == true &&
                          _passwordValido == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ListViewScreenEbr()));
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('DARME DE ALTA'),
                    ))
              ],
            )),
      ),
    );
  }
}
