# to_do_app

# Final Project Submission: Flutter To-Do App

## Student Name:
KASIM CHOGLE

## Student Number:
240417961

## Lesson Name and Number:
COM206 - VISUAL PROGRAMMING

---

## Project Title:
Flutter To-Do Application

---

## Research Question / Problem Statement:
How can we efficiently manage daily tasks using a simple, interactive mobile application?

---

## Objective of the Project:
The project aims to develop a Flutter-based To-Do app that allows users to:
- Add new tasks
- Mark tasks as completed or incomplete
- Delete tasks
- Search for tasks

---

## Expected Outcome:
A fully functional Flutter mobile app that demonstrates task management features with a clean and user-friendly interface.

---

## Methodology:

### Control Flow:
1. Start the app  
2. Display all existing tasks  
3. Allow users to:
   - Add a new task via TextField  
   - Mark tasks as done/undone  
   - Delete tasks  
   - Search for tasks  
4. Repeat until the app is closed

### Components:
- **Input:** TextField for new tasks and search bar  
- **Processing:** Maintain a list of `ToDo` objects in state  
- **Output:** Display tasks in a scrollable `ListView`  

---

## Technical Implementation:
- **Programming Language:** Dart  
- **Framework:** Flutter  
- **Packages Used:** 
  - `google_fonts` (for custom fonts)  

### Example Code Snippet:
```dart
void _addToDoItem(String toDo){
  setState(() {
    todosList.add(ToDo(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      todoText: toDo
    ));
  });
  _todoController.clear();
}