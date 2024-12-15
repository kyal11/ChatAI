import 'package:flutter/material.dart';
import 'package:submission1/helper/assets_manager.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:submission1/helper/util.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool _isLoading = true;

  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          leading: Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Container(
                width: 64.0,
                height: 64.0,
                child: Image.asset(
                  'images/ChatAi-removebg.png',
                  fit: BoxFit.cover,),
              ),
          ),
          title: const Text('ChatAI'),
        ),
        body: SafeArea(
            child: Column(
              children: [
                Flexible(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const Text('tes yeah');
                      }
                  ),
                ),
                if (_isLoading) ...[
                  const SpinKitThreeBounce(
                    color: Colors.black,
                    size:25
                    )
                ],
                SizedBox(height: 25.0),
                Material(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextField(controller: textEditingController,
                                onSubmitted: (value) {

                                },
                                decoration: const InputDecoration.collapsed(hintText: 'Bagaimana saya bisa membantu anda?', hintStyle: TextStyle(color: Colors.black)),
                            )
                        ),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.send, color: Colors.black))
                      ],
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}
