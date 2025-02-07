import 'package:flutter/material.dart';
import 'package:student_lecture_app/core/commons/colors_const.dart';
import 'package:student_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:student_lecture_app/presentation/widgets/molecules/required_text.dart';
import 'package:student_lecture_app/presentation/widgets/organisms/ui_helper.dart';

class TextFormFieldCustom extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextStyle? style;
  final TextEditingController? controller;
  final String? hintText;
  final TextAlign? textAlign;
  final String? Function(String?)? validator;
  final void Function(String?)? onChange;
  final String? title;
  final Widget? preffixIcon;
  final int? maxLines;
  final String? initialValue;

  const TextFormFieldCustom({
    super.key,
    this.keyboardType,
    this.style,
    this.controller,
    this.hintText,
    this.textAlign,
    this.validator,
    this.title,
    this.preffixIcon,
    this.maxLines,
    this.onChange,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          RequiredText(
            title: title,
          ),
        TextFormField(
          initialValue: initialValue,
          maxLines: maxLines,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: keyboardType,
          textAlign: textAlign ?? TextAlign.left,
          controller: controller,
          autovalidateMode: AutovalidateMode.always,
          style: style ?? context.textTheme.bodyLarge,
          validator: validator,
          onChanged: onChange,
          decoration: InputDecoration(
            prefixIconColor: ColorConstant.rose700,
            prefixIcon: preffixIcon,
            prefixIconConstraints: BoxConstraints(minWidth: UIHelper.setSp(50)),
            hintText: hintText,
            contentPadding: UIHelper.padding(vertical: 15, horizontal: 10),
            errorStyle:
                context.textTheme.bodySmall!.copyWith(color: Colors.red),
            isDense: true,
            prefixStyle: context.textTheme.bodyLarge!,
            filled: true,
            fillColor: ColorConstant.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(UIHelper.setWidth(10)),
              borderSide: const BorderSide(
                color: ColorConstant.rose700,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(UIHelper.setWidth(10)),
              borderSide: BorderSide(
                color: ColorConstant.gray200.withOpacity(0.8),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(UIHelper.setWidth(10)),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            errorMaxLines: 2,
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(UIHelper.setSp(10)),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(UIHelper.setSp(10)),
              borderSide: BorderSide(
                color: ColorConstant.gray200.withOpacity(0.7),
              ),
            ),
            hintStyle: context.textTheme.bodyLarge!
                .copyWith(color: ColorConstant.gray200.withOpacity(0.7)),
          ),
        ),
      ],
    );
  }
}
