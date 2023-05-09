defmodule Todos do
  def create_todos do
    # # alter code - messy ;)
    # # io.gets liest ein string ein
    # anzahl_der_todos = IO.gets("Anzahl der Todos: ")

    # # Integer.parse zerlegt die eingabe in integer und string -> wird gleich den beiden variablen zugewiesen
    # {anzahl_der_todos, _rest} = Integer.parse(anzahl_der_todos)

    # # ausgabe
    # anzahl_der_todos

    # neuer code - pipe for the win ;)

    {anzahl_der_todos, _} = IO.gets("Anzahl der Todos: ") |> Integer.parse()

    for _ <- 1..anzahl_der_todos do
      IO.gets("Todo: ") |> String.trim()
    end
  end

  def temp_todos do
    ["todo 1", "todo 2", "todo 3", "todo 4"]
  end

  def complete_todo(tasks, task) do
    if contains_todo?(tasks, task) do
      # Task existiert
      List.delete(tasks, task)
    else
      # Task existiert nicht
      :not_found_error
    end
  end

  def add_new_todo(tasks, task) do
    if !contains_todo?(tasks, task) do
      List.insert_at(tasks, -1, task)
    else
      :allready_in_list_error
    end
  end

  def contains_todo?(tasks, task) do
    Enum.member?(tasks, task)
  end

  def keyword_search(tasks, find) do
    for task <- tasks, String.contains?(task, find), do: task
  end

  def random_todo(tasks) do
    [todo] = Enum.take_random(tasks, 1)
    todo
  end
end
