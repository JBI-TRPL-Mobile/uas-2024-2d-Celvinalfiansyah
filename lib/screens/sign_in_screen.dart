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