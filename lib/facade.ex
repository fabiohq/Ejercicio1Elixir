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
      result = number ScheduleServer.read_sistem_config_file()
        |> ScheduleServer.read_sistem_config_file()
        |> ScheduleServer.init()
        |> ScheduleServer.initialize_context()
    end

    def stop_server(content) do
      result = boolean ScheduleServer.destroy()
       |> ScheduleServer.shutdown()    
    end

  end
end
