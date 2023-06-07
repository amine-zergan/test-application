// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';

import 'package:testapp/design/views/home/emplacement_page.dart/data_view.dart';

class DropDownPage extends StatefulWidget {
  const DropDownPage({super.key});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  Region? region;
  String? zone;
  Region FirstRegion = regionData.first;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tp-6 check dropDownButton",
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        elevation: 4,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropDownRegion(
                value: region,
                widget: Text(regionData.first.name),
                regionData: regionData,
                title: "Votre Region :",
                items: regionData
                    .map(
                      (data) => DropdownMenuItem(
                        value: data,
                        child: Text(data.name),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    region = value;
                    FirstRegion = value!;
                    zone = null;
                  });
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              DropDownRegion(
                value: zone,
                widget: Text(FirstRegion.zone.first),
                regionData: FirstRegion.zone,
                title: "Votre Zone :",
                items: FirstRegion.zone
                    .map(
                      (data) => DropdownMenuItem(
                        value: data,
                        child: Text(data),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    zone = value!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DropDownRegion<T> extends StatelessWidget {
  const DropDownRegion({
    Key? key,
    required this.value,
    required this.items,
    required this.regionData,
    this.onChanged,
    required this.widget,
    required this.title,
  }) : super(key: key);

  final T? value;
  final List<DropdownMenuItem<T>> items;
  final List<T> regionData;
  final Function(T?)? onChanged;
  final Widget widget;
  final String title;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            title,
          ),
        ),
        Container(
          width: size.width * 0.8,
          margin: const EdgeInsets.only(left: 20.0),
          child: DropdownButton<T>(
            isExpanded: true,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            value: value,
            itemHeight: 50,
            hint: widget,
            items: items,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
