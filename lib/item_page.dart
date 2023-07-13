import 'package:flutter/material.dart';
import 'package:test_ahlulquran/widget/package_item.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  List<bool> cardStates = [false, false, false, false, false, false];
  void changeStateColor(int index) {
    setState(() {
      cardStates[index] = !cardStates[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Mau beli pulsa berapa?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 17,
              spacing: 17,
              children: [
                GestureDetector(
                  onTap: () => changeStateColor(0),
                  child: PackageItem(
                    amount: '15.000',
                    price: 'Rp.16.500',
                    color: cardStates[0] ? Colors.green[100]! : Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () => changeStateColor(1),
                  child: PackageItem(
                    amount: '15.000',
                    price: 'Rp.16.500',
                    color: cardStates[1] ? Colors.green[100]! : Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () => changeStateColor(2),
                  child: PackageItem(
                    amount: '15.000',
                    price: 'Rp.16.500',
                    color: cardStates[2] ? Colors.green[100]! : Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () => changeStateColor(3),
                  child: PackageItem(
                    amount: '15.000',
                    price: 'Rp.16.500',
                    color: cardStates[3] ? Colors.green[100]! : Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () => changeStateColor(4),
                  child: PackageItem(
                    amount: '15.000',
                    price: 'Rp.16.500',
                    color: cardStates[4] ? Colors.green[100]! : Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () => changeStateColor(5),
                  child: PackageItem(
                    amount: '15.000',
                    price: 'Rp.16.500',
                    color: cardStates[5] ? Colors.green[100]! : Colors.white,
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
