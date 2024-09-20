import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VehicleKit extends StatefulWidget {
  final String item;
  final bool temItem;

  const VehicleKit(this.item, this.temItem, {super.key});

  @override
  State<VehicleKit> createState() => _VehicleKitState();
}

class _VehicleKitState extends State<VehicleKit> {
  bool temItem = false;
  bool value = true;
  void changeValue(bool newvalue) {
    setState(() {
      value = newvalue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        child: Stack(children: [
          Column(children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 50,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.item,
                              style: const TextStyle(
                                fontSize: 20,
                                overflow: TextOverflow.ellipsis,
                              ))
                        ],
                      ),
                      CupertinoSwitch(value: value, onChanged: changeValue),
                    ]))
          ])
        ]));
  }
}
