# Todo-app

## Overview

This is a simple To-Do List application built with Ruby on Rails 8.0.2 without using a database. The tasks are stored in memory during the application's runtime. Users can create tasks, set due dates, prioritize tasks, mark them as completed, update task details, and delete tasks.

## Features

- Create new tasks with a title, due date, and priority level
- View all tasks in a sorted list
- Sort tasks by priority or due date
- Update existing tasks
- Mark tasks as completed
- Delete tasks
- UI enhancements for better user experience

## Installation

### Prerequisites

Ensure you have the following installed:

- Ruby
- Rails 8.0.2
- Bundler

### Setup

1. Clone the repository:
   git clone https://github.com/neetutiwari1428/todo-app.git

   cd Todo-app

2. Install dependencies:
   bundle install
3. Start the server:
   rails server
4. Open your browser and go to `http://localhost:3000`

## Controller (TasksController)

The `TasksController` manages task operations:

- `index` - Displays tasks with sorting options
- `create` - Adds a new task
- `update` - Modifies an existing task
- `destroy` - Deletes a task
- `task_complete` - Marks a task as completed

## Views

### `_task.html.erb`

Styled task component displaying:

- Task title
- Priority level (Low, Medium, High)
- Due date and time
- Update, delete, and mark complete actions

### `index.html.erb`

Main view rendering:

- Task list
- Task creation form

## Usage

1. Add a new task by entering the title, due date, and priority.
2. View tasks in the list.
3. Use sorting options to prioritize tasks.
4. Edit or delete tasks as needed.
5. Mark tasks as completed when done.
