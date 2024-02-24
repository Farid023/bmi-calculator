import 'package:bmi_calculator/screens/home_screen/widgets/person_details_card.dart';
import 'package:flutter/material.dart';

class PersonDetailsView extends StatefulWidget {
  const PersonDetailsView({
    super.key,
    required this.weight,
    required this.age,
  });

  final int weight;
  final int age;

  @override
  State<PersonDetailsView> createState() => _PersonDetailsViewState();
}

class _PersonDetailsViewState extends State<PersonDetailsView> {
  late int personAge = widget.age;
  late int personWeight = widget.weight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PersonDetailsCard(
          cardHeaderText: 'WEIGHT',
          value: personWeight,
          onIncrement: () {
            setState(() {
              personWeight++;
            });
          },
          onDecrement: () {
            setState(() {
              if (personWeight > 0) {
                personWeight--;
              }
            });
          },
        ),
        const SizedBox(width: 16),
        PersonDetailsCard(
          cardHeaderText: 'AGE',
          value: personAge,
          onIncrement: () {
            setState(() {
              personAge++;
            });
          },
          onDecrement: () {
            setState(() {
              if (personAge > 0) {
                personAge--;
              }
            });
          },
        ),
      ],
    );
  }
}
