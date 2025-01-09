import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  late Future<List<dynamic>> _messages;

  Future<List<dynamic>> _loadMessages() async {
    final String data = await rootBundle.loadString('lib/assets/data/datamessage.json');
    return jsonDecode(data);
  }

  @override
  void initState() {
    super.initState();
    _messages = _loadMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        centerTitle: false, 
        title: const Text('Messages'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
            },
          ),
        ],
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _messages,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No messages found.'));
          }

          final messages = snapshot.data!;
          return ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              final message = messages[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(message['image']),
                ),
                title: Text(message['name']),
                subtitle: Text(message['message']),
              );
            },
          );
        },
      ),
    );
  }
}