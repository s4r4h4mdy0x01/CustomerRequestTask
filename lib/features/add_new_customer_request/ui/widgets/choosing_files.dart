import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_cubit.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoosingFiles extends StatelessWidget {
  const ChoosingFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 15),
          onPressed: () {
            context.read<CustomerRequestCubit>().pickFile();
          },
          color: const Color.fromARGB(255, 231, 209, 235),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16,
            ), // تعديل قيمة الـ Border Radius حسب الحاجة
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('أختار صورة'),
              const Icon(Icons.image, color: Colors.purple),
            ],
          ),
        ),
        // MaterialButton(
        //   onPressed: () => context.read<CustomerRequestCubit>().captureImage(),
        //   color: ColorManager.grey2,
        //   child: const Icon(Icons.camera_alt),
        // ),
        horizontalSpace(15),
        BlocBuilder<CustomerRequestCubit, CustomerRequestState>(
          builder: (context, state) {
            final files = context.read<CustomerRequestCubit>().files;
            if (files.isEmpty) {
              return const Text('لم يتم اختيار صورة ');
            }

            return Column(
              children:
                  files.map((file) {
                    final extension = file.path.split('.').last.toLowerCase();
                    final isImage = ['jpg', 'jpeg', 'png'].contains(extension);
                    final isPdf = extension == 'pdf';

                    return Column(
                      children: [
                        if (isImage)
                          SizedBox(height: 200, child: Image.file(file)),
                        if (isPdf)
                          SizedBox(
                            height: 200,
                            child: PDFView(filePath: file.path),
                          ),
                      ],
                    );
                  }).toList(),
            );
          },
        ),
      ],
    );
  }
}
