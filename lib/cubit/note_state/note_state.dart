abstract class AddNoteState{}
class AddNoteInital extends AddNoteState{}
class AddNoteLoading extends AddNoteState{}
class AddNoteSuccess extends AddNoteState{}
class AddNoteFailuare extends AddNoteState
{
  final String  eMessage;

  AddNoteFailuare(this.eMessage);
}