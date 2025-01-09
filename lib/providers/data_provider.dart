import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import '../models/message_model.dart';

class DataProvider with ChangeNotifier {
  List<MessageModel> _messages = [];

  List<MessageModel> get messages => _messages;

  Future<void> loadMessages() async {
    final data = await rootBundle.loadString('assets/datamessage.json');
    final List<dynamic> jsonResult = jsonDecode(data);
    _messages = jsonResult.map((e) => MessageModel.fromJson(e)).toList();
    notifyListeners();
  }
}
