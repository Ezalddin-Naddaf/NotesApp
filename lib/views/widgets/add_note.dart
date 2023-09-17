import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/views/widgets/addNoteForm.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Scaffold(
        body: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFaluire) {
              print('Error detected${state.errMessage}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: ModalProgressHUD(
                opacity: 0,
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: ListView(
                  children: const [
                    AddNoteForm(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
