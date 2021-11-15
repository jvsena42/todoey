class Task {

  final String name;
  bool isCkecked = false;

  Task({this.name = "", this.isCkecked = false});

    void toggleDone() => isCkecked = !isCkecked;
}