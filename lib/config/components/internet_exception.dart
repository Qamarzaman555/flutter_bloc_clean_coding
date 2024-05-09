import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_coding/config/components/round_btn.dart';

import '../colors/app_colors.dart';

class InternetExceptionWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const InternetExceptionWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.15,
        ),
        const Icon(
          Icons.cloud_off,
          color: AppColors.errorColor,
          size: 50,
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.16),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Text(
              'We\'re unable to show results.\nPlease check your data\nconnection.',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(fontSize: 10),
            ),
          ),
        ),
        RoundButton(
          onPressed: onPressed,
          title: 'RETRY',
        )
      ],
    );
  }
}
