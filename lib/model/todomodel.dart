class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  ToDo({
    this.id,
    this.todoText,
    this.isDone = false,
  });
  static List<ToDo> todomodel() {
    return [
      ToDo(id: '01', todoText: 'Morning Prayer', isDone: true),
      ToDo(
        id: '02',
        todoText: 'Morning Excercise',
      ),
      ToDo(id: '03', todoText: 'Breakfast', isDone: true),
      ToDo(
        id: '04',
        todoText: 'Check Mail',
      ),
      ToDo(id: '05', todoText: 'Reading Book', isDone: true),
      ToDo(
        id: '06',
        todoText: 'Team Meeting',
      ),
      ToDo(id: '07', todoText: 'Work on mobile apps for 2 hour', isDone: true),
      ToDo(
        id: '08',
        todoText: 'Take rest',
      ),
    ];
  }
}
