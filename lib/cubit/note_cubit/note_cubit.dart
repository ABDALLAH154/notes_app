import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/cubit/note_state/note_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState>
{
  AddNoteCubit():super(AddNoteInital());

  addNote(NoteModel note)async
  {
    emit(AddNoteLoading());
try {
  var  noteBox = Hive.box<NoteModel>(kBox);
  emit(AddNoteSuccess());
  await noteBox.add(note);
} catch (e) {
  AddNoteFailuare(e.toString());
}
  }
}