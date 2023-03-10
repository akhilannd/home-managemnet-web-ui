// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';

// Project imports:
import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/style.dart';
import '../../../components/common_comp.dart';

class BuildContainerRow extends StatelessWidget {
  const BuildContainerRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CommonComponents.decoratedContainerWhite,
      alignment: FractionalOffset.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: appPadding - 5, horizontal: appPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             buildContainerRowItems(
              icon: const Icon(
                Icons.hub,
                color: blueGrey300,
                size: 25,
              ),
              value: "80%",
              text: "Motion",
            ),

             buildContainerRowItems(
              icon: const Icon(
                Icons.bolt_outlined,
                color: grey400,
                size: 25,
              ),
              value: "70kWh",
              text: "Energy",
            ),

            buildContainerRowItems(
              icon: SvgPicture.asset(
                "assets/svg/temperature.svg",
                height: 32,
                color: iconYellow,
              ),
              value: "28 c",
              text: "Temperature",
            ),

            buildContainerRowItems(
              icon: SvgPicture.asset("assets/svg/humidity.svg",
                  color: green300, height: 32),
              value: "57%",
              text: "Humidity",
            ),

            buildContainerRowItems(
              icon: const Icon(
                Icons.network_wifi_3_bar,
                color: grey700,
                size: 25,
              ),
              value: "8",
              text: "Device",
            ),

            Container(
              decoration: const BoxDecoration(
                  color: grey100,
                  borderRadius:
                  BorderRadius.all(Radius.circular(10))),
              child: IconButton(
                  onPressed: () {
                    CommonComponents.showToast();
                  }, icon: const Icon(Icons.search)),
            )

          ],
        ),
      ),
    );
  }
}




  Row buildContainerRowItems({required Widget icon,required String text,required String value}) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      icon,
      const SizedBox(
        width: 15,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: greyMediumSizedTextHeading),
          const SizedBox(
            height: 5,
          ),
          Text(
            value,
            style: textHeadingBlack,
          ),
        ],
      )
    ],
  );
  }

