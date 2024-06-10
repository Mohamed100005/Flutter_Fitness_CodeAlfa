import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WeightEnter extends StatefulWidget {
  const WeightEnter({super.key});

  @override
  State<WeightEnter> createState() => _WeightEnterState();
}

class _WeightEnterState extends State<WeightEnter> {
  String weight = '0.0';
  final TextEditingController _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromRGBO(42, 46, 55, 1),
        child: Column(
          children: [
            Image.asset('assets/images/image017.jpg'),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Your Weight Today",
              style: TextStyle(
                  color: Color.fromRGBO(224, 254, 16, 1), fontSize: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weight,
                  style: const TextStyle(color: Colors.white, fontSize: 50.0),
                ),
                const Text(
                  "Kg",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            TextField(
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
              ],
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(border: OutlineInputBorder(),),
              controller: _weightController,
            ),
            const SizedBox(height: 20.0,),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: width - 40.0,
                  margin: const EdgeInsets.only(bottom: 30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: FloatingActionButton(
                    backgroundColor: const Color.fromRGBO(224, 254, 16, 1),
                    child: const Text(
                      'Enter today\'s weight',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(42, 46, 55, 1),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    onPressed: () {
                      weight = _weightController.text;
                      setState(() {
                        _weightController.clear();
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
