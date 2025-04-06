import 'package:assets_management/app/core/theme/colors.dart';
import 'package:assets_management/app/core/widgets/text/text.dart';
import 'package:flutter/material.dart';

class ChipWidget extends StatefulWidget {
  const ChipWidget({
    super.key,
    required this.label,
    this.icon,
    this.selected = false,
    this.onSelected,
  });

  final String label;
  final IconData? icon;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  bool enabled = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      enabled = widget.selected;
    });
  }

  @override
  void didUpdateWidget(covariant ChipWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selected != widget.selected) {
      setState(() {
        enabled = widget.selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      showCheckmark: false,
      onSelected: (value) {
        setState(() {
          enabled = value;
          widget.onSelected?.call(value);
        });
      },
      selected: enabled,
      color: WidgetStateColor.resolveWith((state) {
        if (enabled) {
          return AColors.primary;
        }
        return AColors.white;
      }),
      avatar: Icon(widget.icon, color: enabled ? AColors.white : AColors.gray6),
      label: AText.b14M(
        'Sensor de Energia',
        color: enabled ? AColors.white : AColors.gray6,
      ), //
    );
  }
}
