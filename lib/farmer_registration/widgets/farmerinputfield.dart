import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class farmerinputfield extends StatefulWidget {
  const farmerinputfield({
    Key? key,
    this.maxLength,
    this.initialText,
    this.onChanged,
    this.validator,
    this.width,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.readOnly,
    this.hintText,
    this.errorText,
    this.keyboardtype,
  }) : super(key: key);
  final int? maxLength;
  // final String labelText;

  final String? initialText;
  final void Function(String)? onChanged;
  // final void Function()? onTap;
  final dynamic? Function(String?)? validator;
  final double? width;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final bool? readOnly;
  final String? hintText;
  final String? errorText;
  final bool? keyboardtype;

  @override
  _farmerinputfieldState createState() => _farmerinputfieldState();
}

class _farmerinputfieldState extends State<farmerinputfield> {
  bool showerror = false;
  final TextEditingController controller = new TextEditingController();
  void initState() {
    super.initState();

    controller.text = widget.initialText ?? "";
  }

  @override
  Widget build(BuildContext context) {
    if (widget.initialText == "") controller.text = widget.initialText ?? "";
    return Container(
      width: widget.width,
      child: TextField(
        //   widget.keyboardtype ? TextInputType.number :
        keyboardType: TextInputType.text,
        autofocus: true,
        controller: this.controller,
        // onTap: () {
        //   setState(() {
        //     FocusScope.of(context).unfocus();
        //     showerror = true;
        //   });
        // },
        //  enabled: false,
        key: widget.key,
        style: GoogleFonts.lato(
          fontSize: MediaQuery.of(context).size.width * 0.04,
          color: Colors.black,
        ),
        // initialValue: widget.initialText,
        readOnly: widget.readOnly ?? false,
        // autovalidate: false,

        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(7)),
            filled: true,
            fillColor: Colors.white,
            errorText: showerror ? widget.errorText : null,
            hintText: widget.hintText,
            hintStyle: GoogleFonts.lato(
              fontSize: 12.0,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
            errorStyle: GoogleFonts.lato(
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.bold,
              color: Colors.red[900],
            ),
            /* counterText: "",
                 labelText: widget.labelText,
                prefixIcon: widget.prefixIcon,
                alignLabelWithHint: true,
                suffixIcon: widget.suffixIcon, */

            focusColor: Theme.of(context).primaryColorDark,
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: const BorderSide(
                color: Colors.black,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(7)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(7))),
        onChanged: widget.onChanged,
      ),
    );
  }
}
