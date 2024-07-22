import 'widget_export.dart';


class TextInput extends StatelessWidget {
  final TextEditingController textInput;
  final String hintText;
  final Color inputColor, borderColor;
  const TextInput({
    super.key,
    required this.textInput,
    required this.hintText, required this.inputColor, required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        controller: textInput,
        focusNode: FocusNode(),
        keyboardType: TextInputType.text,
        style: AppTextStyle.medium(inputColor),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyle.medium(
            inputColor,
          ),
          filled: false,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: borderColor, width: 0.06.dp)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: borderColor, width: 0.06.dp)),
        ),
      ),
    );
  }
}
