import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Chatbot_Screen/Data/data.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleSelectionMode(bool isSelected, Function deleteCallback) {
    if (isSelected) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: const Text(""),
        backgroundColor: primaryColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.chat),
            const SizedBox(width: 10),
            Text(
              'chat_with_bot'.tr,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
        actions: [
          Consumer<ChatProvider>(
            builder: (context, chatProvider, child) {
              final isSelecting = chatProvider.isSelecting;
              _toggleSelectionMode(
                  isSelecting, chatProvider.deleteSelectedMessages);

              return isSelecting
                  ? Row(
                      children: [
                        ScaleTransition(
                          scale: _animation,
                          child: IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Color.fromARGB(255, 247, 89, 77),
                            ),
                            onPressed: chatProvider.selectedMessages.isEmpty
                                ? null
                                : () => chatProvider.deleteSelectedMessages(),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                          onPressed: chatProvider.toggleSelectionMode,
                        ),
                      ],
                    )
                  : IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black54,
                      ),
                      onPressed: chatProvider.toggleSelectionMode,
                    );
            },
          ),
        ],
      ),
      body: Consumer<ChatProvider>(
        builder: (context, chatProvider, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  itemCount: chatProvider.messages.length +
                      (chatProvider.isTyping ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index == 0 && chatProvider.isTyping) {
                      return ChatBubble(
                        message: Message(
                          text: '...',
                          isSentByMe: false,
                          isSpeaking: false,
                          timestamp: DateTime.now(),
                        ),
                        onSpeak: chatProvider.speak,
                        onStop: chatProvider.stop,
                        isSpeakingGlobally: chatProvider.isSpeaking,
                        isSelecting: chatProvider.isSelecting,
                        isSelected: false,
                        onSelect: chatProvider.toggleMessageSelection,
                        onTranslate: chatProvider.translateToUrdu,
                      );
                    }
                    final message = chatProvider
                        .messages[chatProvider.isTyping ? index - 1 : index];
                    return ChatBubble(
                      message: message,
                      onSpeak: chatProvider.speak,
                      onStop: chatProvider.stop,
                      isSpeakingGlobally: chatProvider.isSpeaking,
                      isSelecting: chatProvider.isSelecting,
                      isSelected:
                          chatProvider.selectedMessages.contains(message),
                      onSelect: chatProvider.toggleMessageSelection,
                      onTranslate: chatProvider.translateToUrdu,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SuggestedQuestions(
                      questions: chatProvider.suggestedQuestions,
                      onSelect: chatProvider.sendMessage,
                      isBotResponding:
                          chatProvider.isBotResponding, // Pass new property
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: chatProvider.controller,
                            focusNode: chatProvider.focusNode,
                            decoration: InputDecoration(
                              hintText: chatProvider.isBotResponding
                                  ? 'bot_responding'.tr
                                  : 'type_your_message'.tr,
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 20.0,
                              ),
                            ),
                            enabled: !chatProvider.isBotResponding,
                            onSubmitted: chatProvider.isBotResponding
                                ? null
                                : chatProvider.sendMessage,
                          ),
                        ),
                        const SizedBox(width: 10),
                        // Send/Stop Icon Button
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[400],
                          ),
                          child: IconButton(
                            icon: chatProvider.isBotResponding
                                ? const Icon(
                                    Icons.stop,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.send,
                                    color: Colors.white,
                                  ),
                            onPressed: chatProvider.isBotResponding
                                ? () => chatProvider.stopBotResponse()
                                : () {
                                    chatProvider.sendMessage(
                                        chatProvider.controller.text);
                                    // Automatically focus on the text field after sending a message
                                    FocusScope.of(context)
                                        .requestFocus(chatProvider.focusNode);
                                  },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final Message message;
  final Function(String, Message) onSpeak;
  final Function(Message) onStop;
  final bool isSpeakingGlobally;
  final bool isSelecting;
  final bool isSelected;
  final Function(Message) onSelect;
  final Function(Message) onTranslate;

  const ChatBubble({
    super.key,
    required this.message,
    required this.onSpeak,
    required this.onStop,
    required this.isSpeakingGlobally,
    required this.isSelecting,
    required this.isSelected,
    required this.onSelect,
    required this.onTranslate,
  });

  @override
  Widget build(BuildContext context) {
    final isSentByMe = message.isSentByMe;
    final alignment =
        isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final mainAxisAlignment =
        isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start;
    final color = isSentByMe ? primaryColor : Colors.grey.shade200;
    final textColor = isSentByMe ? Colors.white : Colors.grey.shade900;
    final timeColor = isSentByMe ? Colors.white : Colors.grey.shade600;
    final speakerIconColor = isSentByMe ? Colors.white : Colors.grey.shade600;
    final borderColor = isSelected ? Colors.red : Colors.transparent;

    // Format the timestamp
    final timeFormatter = DateFormat('hh:mm a');
    final formattedTime = timeFormatter.format(message.timestamp);

    return GestureDetector(
      onLongPress: isSelecting ? null : () => onSelect(message),
      onTap: isSelecting ? () => onSelect(message) : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        child: Column(
          crossAxisAlignment: alignment,
          children: [
            Row(
              mainAxisAlignment: mainAxisAlignment,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.75,
                  ),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSentByMe ? 12.0 : 0),
                      topRight: Radius.circular(isSentByMe ? 0 : 12.0),
                      bottomLeft: const Radius.circular(12.0),
                      bottomRight: const Radius.circular(12.0),
                    ),
                    border: Border.all(color: borderColor, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 12.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message.text,
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () => onTranslate(message),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      message.isSpeaking
                                          ? Icons.stop
                                          : Icons.volume_up,
                                      color: speakerIconColor,
                                      size: 16,
                                    ),
                                    onPressed: isSpeakingGlobally &&
                                            !message.isSpeaking
                                        ? null
                                        : () {
                                            if (message.isSpeaking) {
                                              onStop(message);
                                            } else {
                                              onSpeak(message.text, message);
                                            }
                                          },
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              formattedTime,
                              style: TextStyle(
                                color: timeColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChatProvider with ChangeNotifier {
  final List<Message> _messages = [];
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isTyping = false;
  bool _isSpeaking = false;
  bool _isSelecting = false;
  final FlutterTts _flutterTts = FlutterTts();
  final Set<Message> _selectedMessages = {};
  final List<String> _suggestedQuestions = [
    'how_are_you'.tr,
    'tell_me_a_story'.tr,
    'what_can_you_do'.tr,
  ];
  bool _isBotResponding = false;

  List<Message> get messages => _messages;
  TextEditingController get controller => _controller;
  FocusNode get focusNode => _focusNode;
  bool get isTyping => _isTyping;
  bool get isSpeaking => _isSpeaking;
  bool get isSelecting => _isSelecting;
  bool get isBotResponding => _isBotResponding;
  Set<Message> get selectedMessages => _selectedMessages;
  List<String> get suggestedQuestions => _suggestedQuestions;

  ChatProvider() {
    _flutterTts.setLanguage("en-US");
    _flutterTts.setPitch(1.0);
    _flutterTts.setSpeechRate(1.0);

    _flutterTts.setCompletionHandler(() {
      for (var message in _messages) {
        message.isSpeaking = false;
      }
      _isSpeaking = false;
      _isBotResponding = false;
      notifyListeners();
    });

    // Load messages from local storage
    _loadMessages();

    // Add initial welcome message if no messages are present
    if (_messages.isEmpty) {
      Future.delayed(const Duration(seconds: 1), () {
        final welcomeMessage = Message(
          text: 'starter_message'.tr,
          isSentByMe: false,
          timestamp: DateTime.now(),
        );
        _messages.insert(0, welcomeMessage);
        notifyListeners();
        // Automatically focus on the text field after the welcome message is displayed
        Future.delayed(const Duration(milliseconds: 500), () {
          _focusNode.requestFocus();
        });
      });
    }
  }

  void sendMessage(String text) {
    if (text.trim().isEmpty) return;
    final message = Message(
      text: text,
      isSentByMe: true,
      timestamp: DateTime.now(),
    );
    _messages.insert(0, message);
    _controller.clear();
    _saveMessages(); // Save messages to local storage

    _isTyping = true;
    notifyListeners();

    _isBotResponding = true;
    notifyListeners();

    Future.delayed(const Duration(seconds: 1), () {
      final botMessage = Message(
        text: '',
        isSentByMe: false,
        timestamp: DateTime.now(),
      );

      _isTyping = false;
      _messages.insert(0, botMessage);
      _saveMessages(); // Save messages to local storage
      notifyListeners();

      Future.delayed(const Duration(milliseconds: 500), () async {
        final responseText = _getBotResponse(text);
        String currentText = '';
        for (var char in responseText.split('')) {
          currentText += char;
          final updatedMessage = Message(
            text: currentText,
            isSentByMe: false,
            timestamp: botMessage.timestamp,
          );
          _messages[0] = updatedMessage;
          notifyListeners();
          await Future.delayed(const Duration(milliseconds: 50));
          if (!_isBotResponding) break; // Check if response was stopped
        }
        _isBotResponding = false;
        _saveMessages(); // Save messages to local storage
        notifyListeners();
      });
    });
  }

  String _getBotResponse(String userMessage) {
    return BotResponses.getBotResponse(userMessage);
  }

  void stopBotResponse() {
    _isBotResponding = false;
    notifyListeners();
    _flutterTts.stop(); // Stop TTS if still speaking
  }

  void toggleSelectionMode() {
    _isSelecting = !_isSelecting;
    if (!_isSelecting) {
      _selectedMessages.clear();
    }
    notifyListeners();
  }

  void toggleMessageSelection(Message message) {
    if (_selectedMessages.contains(message)) {
      _selectedMessages.remove(message);
    } else {
      _selectedMessages.add(message);
    }
    notifyListeners();
  }

  void deleteSelectedMessages() {
    _selectedMessages.forEach((message) {
      if (!message.isSentByMe) {
        if (message.isSpeaking) {
          stop(message);
        }
      }
    });

    _messages.removeWhere((message) => _selectedMessages.contains(message));
    _selectedMessages.clear();
    _saveMessages(); // Save messages to local storage
    notifyListeners();
  }

  void speak(String text, Message message) async {
    _isSpeaking = true;
    message.isSpeaking = true;
    notifyListeners();
    await _flutterTts.speak(text);
  }

  void stop(Message message) async {
    await _flutterTts.stop();
    _isSpeaking = false;
    message.isSpeaking = false;
    notifyListeners();
  }

  void translateToUrdu(Message message) {
    // Implement translation logic here
    final translatedText = 'Urdu Translation of: ${message.text}';
    final updatedMessage = Message(
      text: translatedText,
      isSentByMe: message.isSentByMe,
      timestamp: message.timestamp,
    );
    final index = _messages.indexOf(message);
    if (index != -1) {
      _messages[index] = updatedMessage;
      notifyListeners();
    }
  }

  Future<void> _loadMessages() async {
    final prefs = await SharedPreferences.getInstance();
    final messagesJson = prefs.getString('messages') ?? '[]';
    final List<dynamic> messagesList = json.decode(messagesJson);

    _messages.clear();
    for (var messageJson in messagesList) {
      _messages.add(Message.fromJson(messageJson));
    }
    notifyListeners();
  }

  Future<void> _saveMessages() async {
    final prefs = await SharedPreferences.getInstance();
    final List<dynamic> messagesList =
        _messages.map((message) => message.toJson()).toList();
    prefs.setString('messages', json.encode(messagesList));
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    _flutterTts.stop();
    super.dispose();
  }
}

class Message {
  final String text;
  final bool isSentByMe;
  final DateTime timestamp;
  bool isSpeaking;

  Message({
    required this.text,
    required this.isSentByMe,
    required this.timestamp,
    this.isSpeaking = false,
  });

  Map<String, dynamic> toJson() => {
        'text': text,
        'isSentByMe': isSentByMe,
        'timestamp': timestamp.toIso8601String(),
        'isSpeaking': isSpeaking,
      };

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        text: json['text'],
        isSentByMe: json['isSentByMe'],
        timestamp: DateTime.parse(json['timestamp']),
        isSpeaking: json['isSpeaking'],
      );
}

class SuggestedQuestions extends StatelessWidget {
  final List<String> questions;
  final Function(String) onSelect;
  final bool isBotResponding; // New property

  const SuggestedQuestions({
    super.key,
    required this.questions,
    required this.onSelect,
    required this.isBotResponding, // Initialize new property
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: questions
              .map((question) => GestureDetector(
                    onTap: isBotResponding
                        ? null
                        : () => onSelect(
                            question), // Disable onTap when bot is responding
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 12.0,
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        color: isBotResponding
                            ? Colors.grey
                            : secondaryColor, // Change color when disabled
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        question,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
