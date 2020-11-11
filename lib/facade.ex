defmodule Facade do
  defstruct [:content]


  defprotocol IFacade do
    @fallback_to_any true
    def read_sistem_config_file(number)
    def init(cadena)
    def initialize_context(boolean)
    def destroy(boolean)
    def shutdown(dato)
  end

  defimpl IFacade, for: Facade do

    def start_server(content) do
        result = ScheduleServer.read_sistem_config_file()
        |> ScheduleServer.read_sistem_config_file()
        |> ScheduleServer.init()
        |> ScheduleServer.initialize_context()
    end
    """
    result = list
      |> Stream.map(double)
      |> Stream.map(triple)
      |> Stream.filter(filter)
      |> Enum.map(fn x -> x end)
    """


    #def stop_server(content), do: ScheduleServer.destroy()
      #def stop_server(content), do: ScheduleServer.shutdown()

  end
end
