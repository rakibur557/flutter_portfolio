import 'package:flutter_portfolio/core/exports/app_exports.dart';

class CustomButton extends StatefulWidget {
  // final double btnHeight;
  // final double? btnWidth;
  final double borderRadius;
  final Color btnColor;
  final Color borderColor;
  final String btnText;
  final VoidCallback onTap;
  final Color? hoverBtnColor;
  final Color? hoverBorderColor;
  const CustomButton(
      {super.key,
      required this.btnColor,
      required this.borderColor,
      required this.btnText,
      required this.onTap,
      // required this.btnHeight,
      // this.btnWidth,
      this.hoverBtnColor,
      this.hoverBorderColor,
      required this.borderRadius});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Container(
          // height: widget.btnHeight,
          // width: widget.btnWidth ?? double.maxFinite,

          decoration: BoxDecoration(
            color: _isHovered ? widget.hoverBtnColor : widget.btnColor,
            borderRadius: BorderRadius.circular(widget.borderRadius),
            // border: Border.all(
            //     color:
            //         _isHovered ? widget.hoverBorderColor! : widget.borderColor,
            //     width: 1.5),
            border: Border.all(
              color: _isHovered
                  ? (widget.hoverBorderColor ?? widget.borderColor)
                  : widget.borderColor,
              width: 1.5,
            ),
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              widget.btnText,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
