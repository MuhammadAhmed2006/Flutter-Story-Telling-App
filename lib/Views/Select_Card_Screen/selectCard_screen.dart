import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Card_Screen/card_screen.dart';
import 'package:get/get.dart';

class SelectCardScreen extends StatefulWidget {
  const SelectCardScreen({super.key});

  @override
  _SelectCardScreenState createState() => _SelectCardScreenState();
}

class _SelectCardScreenState extends State<SelectCardScreen> {
  String? _selectedCard = "Visa Card";

  void _handleCardTap(String cardTitle) {
    setState(() {
      _selectedCard = cardTitle;
    });

    switch (cardTitle) {
      case 'MasterCard':
        print("MasterCard");
        break;
      case 'Visa Card':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CardScreen(),
          ),
        );
        break;
      default:
        print("coming soon");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('select_payment_method'.tr),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'please_select_payment_method'.tr,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            PaymentCard(
              icon: Icons.credit_card,
              title: 'Visa Card',
              isEnabled: true,
              isSelected: _selectedCard == 'Visa Card',
              onTap: () => _handleCardTap('Visa Card'),
            ),
            PaymentCard(
              icon: Icons.credit_card,
              title: 'MasterCard',
              isEnabled: true,
              isSelected: _selectedCard == 'MasterCard',
              onTap: () => _handleCardTap('MasterCard'),
            ),
            PaymentCard(
              icon: Icons.payment,
              title: 'PayPal',
              isEnabled: false,
              isSelected: _selectedCard == 'PayPal',
              onTap: () => _handleCardTap('PayPal'),
            ),
            PaymentCard(
              icon: Icons.account_balance_wallet,
              title: 'Jazz Cash',
              isEnabled: false,
              isSelected: _selectedCard == 'Jazz Cash',
              onTap: () => _handleCardTap('Jazz Cash'),
            ),
            PaymentCard(
              icon: Icons.account_balance_wallet,
              title: 'EasyPaisa',
              isEnabled: false,
              isSelected: _selectedCard == 'EasyPaisa',
              onTap: () => _handleCardTap('EasyPaisa'),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isEnabled;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentCard({
    required this.icon,
    required this.title,
    required this.isEnabled,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: isEnabled ? onTap : null,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: isEnabled && isSelected
                ? const LinearGradient(
                    colors: [Colors.blueAccent, Colors.lightBlueAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )
                : null,
            // color: isEnabled ? null : Colors.grey.shade200,
            color: isEnabled ? Colors.grey.shade400 : Colors.grey.shade200,
            border: isSelected
                ? Border.all(
                    color: Colors.blueAccent,
                    width: 2,
                  )
                : null,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: isEnabled ? Colors.white : Colors.grey,
                  // color: Colors.grey,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isEnabled ? Colors.white : Colors.grey,
                      // color: Colors.grey,
                    ),
                  ),
                ),
                if (isEnabled)
                  const Icon(
                    Icons.check_circle,
                    color: Colors.white,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
