class Task {

  final String name;
  bool isCkecked = false;

  Task(this.name, this.isCkecked);

    void toggleDone() => isCkecked = !isCkecked;
}