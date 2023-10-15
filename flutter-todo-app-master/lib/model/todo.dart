class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'aqqqsfd', isDone: true ),
      ToDo(id: '02', todoText: 'hobbubiun', isDone: true ),
      ToDo(id: '03', todoText: 'go', ),
      ToDo(id: '04', todoText: 'sleep', ),
      ToDo(id: '05', todoText: 'wakeup', ),
      ToDo(id: '06', todoText: 'school', ),
    ];
  }
}