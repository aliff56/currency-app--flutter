import 'package:flutter/material.dart';

class CcMaterialpage extends StatefulWidget {
const CcMaterialpage({super.key});

@override
State<CcMaterialpage> createState() => _CCMaterialpagestate();
}
class _CCMaterialpagestate extends State<CcMaterialpage> {
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
    
     final border =  OutlineInputBorder( 
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 1.5,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.circular(10),
    );
    return  Scaffold(
        backgroundColor: const Color.fromARGB(255, 92, 103, 105),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 92, 103, 105),
          elevation: 0,
          title: const Text('Currency converter')
        ),
          body: Center(
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
                TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  decoration: InputDecoration(
                    hintText:'Please Input Amount In USD',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(153, 0, 0, 0),
                    ),
                    prefixIcon: const Icon(Icons.monetization_on),
                    prefixIconColor: const Color.fromARGB(255, 0, 0, 0),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 235, 172, 79),
                    focusedBorder: border,
                      enabledBorder: border,
                    ),   
                    keyboardType: TextInputType.number,            
                ),
                const SizedBox(height: 10),
              ElevatedButton(
                onPressed: convert,
                style:  ElevatedButton.styleFrom(
                  elevation: (20),
                  backgroundColor:(Colors.black),
                  foregroundColor: (Colors.amber),
                  minimumSize: const Size(double.infinity,50),
                  shape: (RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                ),
                child: const Text("Convert"),                
              ),
              ],
                        ),
            ),
          ) 

    );
  }
}