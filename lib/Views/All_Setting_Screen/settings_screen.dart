import 'package:flutter/material.dart';
import 'package:flutter_application_1/Helpers/shared_prefrence_helper.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Splash_Screen/splash_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _selectedLanguage = 'English'; // Initial selected language
  String _selectedVoice = 'Voice 1'; // Initial selected voice

  @override
  void initState() {
    super.initState();
    _loadSelectedLanguage();
  }

  Future<void> _loadSelectedLanguage() async {
    final savedLanguage = await SharedPreferencesHelper.loadSelectedLanguage();
    if (savedLanguage != null) {
      setState(() {
        _selectedLanguage = savedLanguage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text("settings".tr),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  "change_language".tr,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors
                      .blue.shade50, // or TColor.textbox if defined elsewhere
                  borderRadius: BorderRadius.circular(20),
                ),
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  value: _selectedLanguage,
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        _selectedLanguage = newValue;
                      });
                    }
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  items: <String>[
                    'English',
                    'Spanish',
                    // Add other languages here
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                  dropdownColor: Colors.white,
                  elevation: 8,
                ),
              ),
              const SizedBox(height: 8),
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Colors.blue, width: 2.0),
              //     borderRadius: BorderRadius.circular(12),
              //   ),
              //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
              //   child: DropdownButtonFormField<String>(
              //     value: _selectedVoice,
              //     onChanged: (String? newValue) {
              //       if (newValue != null && !newValue.startsWith('Premium')) {
              //         setState(() {
              //           _selectedVoice = newValue;
              //         });
              //       } else if (newValue != null &&
              //           newValue.startsWith('Premium')) {
              //         print("Premium voices");
              //       }
              //     },
              //     decoration: const InputDecoration(
              //       border: InputBorder.none,
              //     ),
              //     items: <String>[
              //       'Voice 1',
              //       'Voice 2',
              //       'Premium Voice 1',
              //       'Premium Voice 2',
              //     ].map<DropdownMenuItem<String>>((String value) {
              //       bool isPremium = value.startsWith('Premium');
              //       return DropdownMenuItem<String>(
              //         value: value,
              //         enabled: !isPremium,
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Text(
              //               value,
              //               style: TextStyle(
              //                 fontSize: 16.0,
              //                 color: isPremium ? Colors.blue : Colors.black,
              //               ),
              //             ),
              //             if (isPremium)
              //               const Icon(Icons.star,
              //                   color: Colors.amber, size: 16),
              //           ],
              //         ),
              //       );
              //     }).toList(),
              //     style: const TextStyle(
              //       fontSize: 16.0,
              //       color: Colors.black,
              //     ),
              //     icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
              //     dropdownColor: Colors.white,
              //     elevation: 8,
              //   ),
              // ),
              SizedBox(height: 20),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors
                      .blue.shade50, // or TColor.textbox if defined elsewhere
                  borderRadius: BorderRadius.circular(20),
                ),
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  value: _selectedVoice,
                  onChanged: (String? newValue) {
                    if (newValue != null && !newValue.startsWith('Premium')) {
                      setState(() {
                        _selectedVoice = newValue;
                      });
                    } else if (newValue != null &&
                        newValue.startsWith('Premium')) {
                      print("Premium voices");
                    }
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  items: <String>[
                    'Voice 1',
                    'Voice 2',
                    'Premium Voice 1',
                    'Premium Voice 2',
                  ].map<DropdownMenuItem<String>>((String value) {
                    bool isPremium = value.startsWith('Premium');
                    return DropdownMenuItem<String>(
                      value: value,
                      enabled: !isPremium,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            value,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: isPremium ? Colors.blue : Colors.black,
                            ),
                          ),
                          if (isPremium)
                            const Icon(Icons.star,
                                color: Colors.amber, size: 16),
                        ],
                      ),
                    );
                  }).toList(),
                  icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                  dropdownColor: Colors.white,
                  elevation: 8,
                ),
              ),

              const SizedBox(height: 25),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    switch (_selectedLanguage) {
                      case 'Spanish':
                        Get.updateLocale(const Locale('es', 'ES'));
                        break;
                      case 'Russian':
                        Get.updateLocale(const Locale('ru', 'RU'));
                        break;
                      case 'Urdu':
                        Get.updateLocale(const Locale('ur', 'PK'));
                        break;
                      case 'French':
                        Get.updateLocale(const Locale('fr', 'FR'));
                        break;
                      case 'Hindi':
                        Get.updateLocale(const Locale('hi', 'IN'));
                        break;
                      case 'Chinese':
                        Get.updateLocale(const Locale('zh', 'CN'));
                        break;
                      case 'Arabic':
                        Get.updateLocale(const Locale('ar', 'AE'));
                        break;
                      case 'Japanese':
                        Get.updateLocale(const Locale('ja', 'JP'));
                        break;
                      case 'German':
                        Get.updateLocale(const Locale('de', 'DE'));
                        break;
                      case 'Korean':
                        Get.updateLocale(const Locale('ko', 'KR'));
                        break;
                      case 'Italian':
                        Get.updateLocale(const Locale('it', 'IT'));
                        break;
                      case 'Turkish':
                        Get.updateLocale(const Locale('tr', 'TR'));
                        break;
                      case 'Thai':
                        Get.updateLocale(const Locale('th', 'TH'));
                        break;
                      case 'Vietnamese':
                        Get.updateLocale(const Locale('vi', 'VN'));
                        break;
                      case 'Indonesian':
                        Get.updateLocale(const Locale('id', 'ID'));
                        break;
                      case 'Dutch':
                        Get.updateLocale(const Locale('nl', 'NL'));
                        break;
                      case 'Swedish':
                        Get.updateLocale(const Locale('sv', 'SE'));
                        break;
                      case 'Norwegian':
                        Get.updateLocale(const Locale('no', 'NO'));
                        break;
                      case 'Greek':
                        Get.updateLocale(const Locale('el', 'GR'));
                        break;
                      case 'Hebrew':
                        Get.updateLocale(const Locale('he', 'IL'));
                        break;
                      case 'Romanian':
                        Get.updateLocale(const Locale('ro', 'RO'));
                        break;
                      default:
                        Get.updateLocale(const Locale('en', 'US'));
                    }

                    await SharedPreferencesHelper.saveSelectedLanguage(
                        _selectedLanguage);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SplashScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                      vertical: 12.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    "save".tr,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
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


// 'Russian',
                    // 'Urdu',
                    // 'French',
                    // 'Hindi',
                    // 'Chinese',
                    // 'Arabic',
                    // 'Japanese',
                    // 'German',
                    // 'Korean',
                    // 'Italian',
                    // 'Turkish',
                    // 'Thai',
                    // 'Vietnamese',
                    // 'Indonesian',
                    // 'Dutch',
                    // 'Swedish',
                    // 'Norwegian',
                    // 'Greek',
                    // 'Hebrew',
                    // 'Romanian',