// ignore: file_names
import 'package:flutter/material.dart';
import 'package:navigatorpush/models/item.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final List<Item> itema = [
    Item(name: 'Frisian flag', price: 5000, desc: 'Frisian Flag Indonesia (FFI) adalah produsen produk-produk nutrisi', image: 'https://www.frisianflag.com/storage/app/media/Produk/GOLD_38gr.png'),
    Item(name: 'Malkist', price: 7000, desc: 'Biskuit dan crackers menjadi salah satu camilan wajib buat kita saat senggang. ', image: 'https://th.bing.com/th?q=Malkist+Coklat&w=138&h=138&c=7&o=5&pid=1.7&mkt=en-ID&cc=ID&setlang=en&adlt=strict')
  ];


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: itema.length,
          itemBuilder: (context, index) {
            final item = itema[index];
            return InkWell(
               onTap: () {
        Navigator.pushNamed(context, '/item' , arguments: Item(name: item.name, price: item.price, desc: item.desc ,image: item.image ),);
        
      },
              child: Card(
                
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(children: [
                    Expanded(child: Text(item.name)),
                    Expanded(
                        child: Text(
                      item.price.toString(),
                      textAlign: TextAlign.end,
                    )),
            
                  ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
