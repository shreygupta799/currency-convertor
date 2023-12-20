import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});
  @override
  State createState() => _currencyConvertState();
}

class _currencyConvertState extends State {
  double result = 0.0;
  //String res = "";
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    try {
      // if (textEditingController != "")
      result = double.parse(textEditingController.text) * 82.4;

      //res = result.toStringAsFixed(2);
    } catch (e) {
      result = 0.0; //h+
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
            color: Colors.black,
            width: 2.0,
            strokeAlign: BorderSide.strokeAlignCenter),
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(50),
        ));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result.toStringAsFixed(2)}",
              style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 55,
                  color: Color.fromARGB(255, 0, 240, 200)),
            ),
            TextField(
              controller: textEditingController,
              style: const TextStyle(
                  color: Colors.black), //ctrl+shift+R=to open refactor
              decoration: InputDecoration(
                  hintText: 'Enter the money in Dollar here',
                  hintStyle:
                      const TextStyle(color: Color.fromARGB(64, 0, 0, 0)),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: border,
                  focusedBorder: border,
                  prefixIcon: const Icon(Icons.attach_money)),
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: convert,
                  style: TextButton.styleFrom(
                      fixedSize: const Size(300, 50),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: const Text(
                    "Convert",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
