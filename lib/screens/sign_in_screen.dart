import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'sign_up_screen.dart';

lass SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late Future<List<dynamic>> _users;

   @override
  void initState() {
    super.initState();
    _users = _loadUsers();
  }

  Future<List<dynamic>> _loadUsers() async {
    final String data = await rootBundle.loadString('lib/assets/data/datauser.json');
    return jsonDecode(data);
  }

  void _signIn(BuildContext context) async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      _showMessage('Please fill in all fields.');
      return;
    }

    try {
      final users = await _users;
      final user = users.firstWhere(
        (u) => u['email'] == email && u['password'] == password,
        orElse: () => null,
      );