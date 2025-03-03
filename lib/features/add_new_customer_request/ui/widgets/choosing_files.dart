import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_cubit.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class ChoosingFiles extends StatelessWidget {
  const ChoosingFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {
            context.read<CustomerRequestCubit>().pickFile();
          },
          color: ColorManager.rad,
          child: const Icon(Icons.folder_open),
        ),
        MaterialButton(
          onPressed: () => context.read<CustomerRequestCubit>().captureImage(),
          color: ColorManager.grey2,
          child: const Icon(Icons.camera_alt),
        ),
        BlocBuilder<CustomerRequestCubit, CustomerRequestState>(
          builder: (context, state) {
            final files = context.read<CustomerRequestCubit>().files;
            if (files.isEmpty) {
              return const Text('لم يتم اختيار ملفات بعد');
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
