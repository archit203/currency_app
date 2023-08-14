import 'package:flutter/material.dart';


class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});
  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {

  double result = 0;
  
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Currency Converter', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              '₹ ${result!=0 ? result.toStringAsFixed(2):result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.lightGreenAccent
                ),
                decoration: const InputDecoration(
                  hintText: "USD",
                  hintStyle: TextStyle(
                    color: Colors.lightGreenAccent,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.lightGreenAccent,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),                
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(onPressed: () {
                result = double.parse(textEditingController.text)*81;                 
                setState(() {});
              },
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.amber),
                foregroundColor: const MaterialStatePropertyAll(Colors.black),
                elevation: const MaterialStatePropertyAll(5),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ))
              ),
              child: const Text('Convert')),
            ),
          ],
        ),
      )
    );
  }
}


 