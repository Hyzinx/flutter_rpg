import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/shared/style_text.dart';
import 'package:flutter_rpg/theme.dart';

class StatusTable extends StatefulWidget {
  const StatusTable(this.character, {super.key});

  final Character character;

  @override
  State<StatusTable> createState() => _StatusTableState();
}

class _StatusTableState extends State<StatusTable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            color: AppColors.secondaryColor,
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(
                  Icons.star_rate,
                  color: (widget.character.getPoints > 0)
                      ? Colors.yellow
                      : Colors.grey,
                ),
                SizedBox(width: 20),
                StyleText("Status Points available : "),
                Expanded(child: SizedBox()),
                StyleHeadline(widget.character.getPoints.toString()),
              ],
            ),
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: widget.character.getStatInFormttedList.map((status) {
              return TableRow(
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor.withOpacity(0.5),
                ),
                children: [
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: StyleHeadline(status["title"]!),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: StyleHeadline(status["value"]!),
                    ),
                  ),
                  TableCell(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          widget.character.manageTheStat(status["title"]!, "+");
                        });
                      },
                      icon: Icon(
                        Icons.arrow_upward,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                  TableCell(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          widget.character.manageTheStat(status["title"]!, "-");
                        });
                      },
                      icon: Icon(
                        Icons.arrow_downward,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
