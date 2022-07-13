library nice_scrollable_text_field;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NiceScrollableTextField extends StatefulWidget {
  const NiceScrollableTextField(
      {Key? key,
      this.inputDecoration,
      this.focusNode,
      this.textEditingController,
      this.scrollVisible = true,
      this.maxLines = 4,
      this.minLines = 1,
      this.keyboardType,
      this.textInputAction,
      this.style,
      this.strutStyle,
      this.textDirection,
      this.textAlign = TextAlign.start,
      this.textAlignVertical,
      this.autofocus = false,
      this.toolbarOptions,
      this.onChanged,
      this.onTap,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.onSaved,
      this.validator,
      this.inputFormatters})
      : super(key: key);

  final InputDecoration? inputDecoration;
  final FocusNode? focusNode;
  final TextEditingController? textEditingController;
  final int maxLines;
  final int minLines;
  final bool? scrollVisible;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final bool autofocus;
  final ToolbarOptions? toolbarOptions;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<NiceScrollableTextField> createState() =>
      _NiceScrollableTextFieldState();
}

class _NiceScrollableTextFieldState extends State<NiceScrollableTextField> {
  final ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        controller: scrollController,
        child: Scrollbar(
          trackVisibility: widget.scrollVisible,
          controller: scrollController,
          child: TextFormField(
              onTap: widget.onTap,
              onChanged: widget.onChanged,
              onEditingComplete: widget.onEditingComplete,
              onFieldSubmitted: widget.onFieldSubmitted,
              onSaved: widget.onSaved,
              validator: widget.validator,
              inputFormatters: widget.inputFormatters,
              toolbarOptions: widget.toolbarOptions,
              textAlignVertical: widget.textAlignVertical,
              textAlign: widget.textAlign,
              textDirection: widget.textDirection,
              strutStyle: widget.strutStyle,
              textInputAction: widget.textInputAction,
              keyboardType: widget.keyboardType,
              autofocus: widget.autofocus,
              maxLines: widget.maxLines,
              minLines: widget.minLines,
              controller: widget.textEditingController,
              focusNode: widget.focusNode,
              decoration: widget.inputDecoration),
        ),
      ),
    );
  }
}
