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

    anzahl_der_todos
  end

  def temp_todos do
    ["todo 1", "todo 2", "todo 3", "todo 4"]
  end

  def contains_todo?(tasks, task) do
    Enum.member?(tasks, task)
  end
end
