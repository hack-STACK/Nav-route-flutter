import 'package:flutter/material.dart';
import 'package:navigatorpush/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item? selectedItem =
        ModalRoute.of(context)?.settings.arguments as Item?;
    if (selectedItem == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error: Item not found'),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Item Page'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            width: 500,
            height: 1000,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      
                      alignment: Alignment.center,
                      child: Image.network(
                        selectedItem.image,
                        height: 150,
                        width: 150,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.error);
                        },
                      ),
                    ),
                    Text(
                      selectedItem.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      selectedItem.desc,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      '\IDR.${selectedItem.price}',style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),
                    )
                  ]),
            ),
          ),
        ),
      );
    }
  }
}
