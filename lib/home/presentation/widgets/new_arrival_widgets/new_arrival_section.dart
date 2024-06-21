import 'package:flutter/cupertino.dart';
import 'package:slash_test/home/presentation/widgets/custom_header.dart';
import 'package:slash_test/home/presentation/widgets/new_arrival_widgets/new_arrival_list.dart';

class NewArrivalSection extends StatelessWidget {
  const NewArrivalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomHeader(headerTitle: "New Arrival"),
        ),
        SizedBox(
          height: 16,
        ),
        NewArrivalList(),
      ],
    );
  }
}
