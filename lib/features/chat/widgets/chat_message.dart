import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.messages, required this.index});

  final List messages;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: messages[index]['isBot']
          ? Alignment.centerLeft
          : Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.8,
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: messages[index]['isBot']
                ? const Color.fromARGB(255, 224, 224, 224)
                : Colors.blue[100],
          ),
          child: Text(
            '${messages[index]['message']}',
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
