import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureap/core/constants/string_constants.dart';
import 'package:measureap/core/routes/routes.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/theme/styles_manager.dart';
import 'package:measureap/core/widgets/custom_button.dart';
import 'package:measureap/feature/assessments/domain/entity/assessment_entity.dart';
import 'package:measureap/feature/assessments/presentation/widgets/custom_dropdown.dart';

import '../bloc/assessment_cubit.dart';

class NewAssessmentScreen extends StatefulWidget {
  final Assessment? assessment;
  const NewAssessmentScreen({super.key, this.assessment});

  @override
  State<NewAssessmentScreen> createState() => _NewAssessmentScreenState();
}

class _NewAssessmentScreenState extends State<NewAssessmentScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.assessment != null) {
      final cubit = context.read<AssessmentCubit>();
      cubit.setAssessmentModel(widget.assessment!);
    } else {
      final cubit = context.read<AssessmentCubit>();
      cubit.fetchFirebaseData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          StringConstants.newAssessment,
          style: getBoldStyle(
            color: AppColors.titleTextColor,
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: BlocBuilder<AssessmentCubit, AssessmentState>(
          builder: (context, state) {
            final cubit = context.read<AssessmentCubit>();
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConstants.cognitiveStatus,
                          style: getBoldStyle(
                            color: AppColors.subtitleTextColor,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        CustomDropDown(
                          color: Colors.white,
                          hintText: widget.assessment != null
                              ? cubit.state.cognitiveStatus!
                              : StringConstants.selectCognitiveStatus,
                          options: state.cognitiveStatuses
                              .map((status) => status.name)
                              .toList(),
                          selectedOption:
                              cubit.state.cognitiveStatus, // Use null initially
                          onChanged: (val) {
                            cubit.updateCognitiveStatus(val);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConstants.applicableMeasures,
                          style: getBoldStyle(
                            color: cubit.state.measures == null
                                ? AppColors.greyColor
                                : AppColors.subtitleTextColor,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        CustomDropDown(
                          color: cubit.state.measures == null
                              ? AppColors.disabledColor
                              : Colors.white,
                          hintText: widget.assessment != null
                              ? cubit.state.measures!
                              : StringConstants.selectApplicableMeasures,
                          options: state.applicableMeasures
                              .map((measure) => measure.name)
                              .toList(),
                          selectedOption: cubit.state.measures,
                          onChanged: (val) {
                            cubit.updateMeasures(val);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConstants.patient,
                          style: getBoldStyle(
                            color: cubit.state.patientName == null
                                ? AppColors.greyColor
                                : AppColors.subtitleTextColor,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        //colors
                        CustomDropDown(
                          color: cubit.state.patientName == null
                              ? AppColors.disabledColor
                              : Colors.white,
                          hintText: widget.assessment != null
                              ? cubit.state.patientName!
                              : StringConstants.enterPatient,
                          options: state.patients
                              .map((patient) => patient.name)
                              .toList(),
                          selectedOption: cubit.state.patientName,
                          onChanged: (val) {
                            cubit.updatePatientName(val);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                ),
                BlocBuilder<AssessmentCubit, AssessmentState>(
                  builder: (context, state) {
                    final cubit = context.read<AssessmentCubit>();
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: PrimaryButton(
                        isDisabled: cubit.isButtonEnabled,
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.assessmentQuestionaire,
                          );
                        },
                        text: StringConstants.startAssessment,
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
