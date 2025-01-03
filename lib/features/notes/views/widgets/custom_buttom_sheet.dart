import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/core/view/components/custom_toast.dart';
import 'package:note_app/features/notes/models/note_model.dart';
import 'package:note_app/features/notes/view_models/add_note_cubit/add_note_cubit.dart';
import '../../../core/view/components/custom_button.dart';
import 'custom_text_field.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: BlocProvider<AddNoteCubit>(
        create: (context) => AddNoteCubit(),
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is AddNoteSuccessState) {
          Navigator.pop(context);
          ToastManager.customToastSuccess(
              color: Colors.black, context: context, title: "Note Add Success");
        } else if (state is AddNoteErrorState) {
          ToastManager.customToastError(
              color: Colors.black,
              context: context,
              title: "Error to add note");
        }
      },
      builder: (context, state) {
        var addNoteCubit = AddNoteCubit.get(context);
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: AbsorbPointer(
            absorbing: state is AddNoteLoadingState,
            child: Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    hintText: "Title",
                    onSaved: (value) {
                      title = value;
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                    hintText: 'Describtion',
                    maxLine: 5,
                    onSaved: (value) {
                      subTitle = value;
                    },
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  state is AddNoteLoadingState
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : CustomButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              addNoteCubit.addNote(NoteModel(
                                  noteTitle: title!,
                                  index: 1,
                                  noteSubtitle: subTitle!,
                                  noteDate: "May 21,2022"));
                            } else {
                              autovalidateMode = AutovalidateMode.always;
                              setState(() {});
                            }
                          },
                          buttonText: "Add",
                          fontSize: 18,
                          borderRadius: 12,
                          textColor: Colors.black,
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
