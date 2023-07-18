import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget packageItem(String amount, String price, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          width: 175,
          decoration: BoxDecoration(
            color: _selectedIndex == index ? Colors.green[100]! : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey,
              width: 2,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                amount,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                price,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      );
    }

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
                packageItem(
                  '15.000',
                  'Rp.16.5000',
                  0,
                ),
                packageItem(
                  '15.000',
                  'Rp.16.5000',
                  1,
                ),
                packageItem(
                  '15.000',
                  'Rp.16.5000',
                  2,
                ),
                packageItem(
                  '15.000',
                  'Rp.16.5000',
                  3,
                ),
                packageItem(
                  '15.000',
                  'Rp.16.5000',
                  4,
                ),
                packageItem(
                  '15.000',
                  'Rp.16.5000',
                  5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
