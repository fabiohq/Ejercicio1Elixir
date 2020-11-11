defmodule Facade do

  defprotocol IFacade do
    @fallback_to_any true
    def start_server(content,number)
    def stop_server(content,boolean)
  end

  defimpl IFacade, for: Facade do

    def start_server(content,number) do
      result = number |> content.read_sistem_config_file()
        |> content.read_sistem_config_file()
        |> content.init()
        |> content.initialize_context()
        result
    end

    def stop_server(content,boolean) do
      result = boolean |> content.destroy()
      |> content.shutdown()
      result
    end
  end
end
