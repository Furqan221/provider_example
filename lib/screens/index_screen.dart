

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exp/provider/counter_provider.dart';
import 'package:provider_exp/screens/counter_screen.dart';
import 'package:provider_exp/screens/slider_screen.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});


  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    // final counterProvider = Provider.of<CounterProvider>(context,listen: false);
    // Timer.periodic(Duration(milliseconds: 2), (timer) => counterProvider.setCount());
  }


  final List<IndexItem> _indexItem = const [
    IndexItem("Counter Example", CounterScreen()),
    IndexItem("Slider Example", SliderScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Provider"),
        centerTitle: true,

      ),
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
          itemBuilder: (context, index) => ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => _indexItem[index].widget,));
          }, child: Text(_indexItem[index].title)), 
          separatorBuilder: (context, index) => const SizedBox(height: 30,), 
          itemCount: _indexItem.length),
    );
  }
}


class IndexItem {
  final String title;
  final  Widget widget;
  const IndexItem(this.title,this.widget);
}