import 'package:flutter/cupertino.dart';


class CurrencyconverterCupertinoApp extends StatefulWidget {
  const CurrencyconverterCupertinoApp({super.key});

  @override
  State<CurrencyconverterCupertinoApp> createState() => _CurrencyconverterCupertinoAppState();
}

class _CurrencyconverterCupertinoAppState extends State<CurrencyconverterCupertinoApp> {
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();
    void convert()
    {
      setState(() {
                  result = double.parse(textEditingController.text)*278.16;
                });
    }
  @override
  Widget build(BuildContext context) {
        
     
    return  CupertinoPageScaffold(
        backgroundColor: const Color.fromARGB(255, 92, 103, 105),
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: Color.fromARGB(255, 92, 103, 105),
          middle: Text('Currency converter')
        ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'PKR ${result!=0 ?result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 30, 
                  fontWeight: FontWeight.bold, 
                  color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                    color: CupertinoColors.white,
                  ), 
                  placeholder:'Please Input Amount In USD',
                  prefix: const Icon(CupertinoIcons.money_dollar_circle_fill), 
                    keyboardType: TextInputType.number,            
                ),
                const SizedBox(height: 10),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text("Convert"),                
              ),
              ],
                        ),
            ),
          ) 

    );
  }
}
