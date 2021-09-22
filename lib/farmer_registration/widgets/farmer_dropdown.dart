import 'package:weather/farmer_registration/widgets/farmer_RichText.dart';
import 'package:flutter/material.dart';

class FormerDropdown extends StatefulWidget {
  FormerDropdown(
      {Key? key,
      this.title,
      required this.hintText,
      required this.dropdownValue,
      required this.items,
      this.initialText,
      this.validator = true,
      this.onChanged,
      this.errorText = ""})
      : super(key: key);

  final String? title;
  final String hintText;

  String? dropdownValue;
  final List items;
  void Function(dynamic)? onChanged;
  final String? initialText;
  String errorText;
  bool validator;
  @override
  FormerDropdownState createState() => FormerDropdownState();
}

class FormerDropdownState extends State<FormerDropdown> {
  @override
  Widget build(BuildContext context) {
    //final GlobalKey<AppExpansionTileState> expansionTile = new GlobalKey();
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Container(
            child:DropdownButton(
                value: widget.dropdownValue,
                  icon: Icon(Icons.keyboard_arrow_down),
                  items:widget.items.map((items) {
                       return DropdownMenuItem(
                           value: items,
                           child: Text(items)
                       );
                  }
                  ).toList(),                  
                    onTap: () {
                          setState(() {
                            widget.onChanged!(widget.dropdownValue);
                          });
                        },
        
      ),
      ),
    );
  }
}