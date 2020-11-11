defmodule ScheduleServer do

    def read_sistem_config_file(number) do
        IO.puts("Reading system config file...")
        try do  
           rem = rem(number, 2)     
           if rem === 0 do
               IO.puts("Config file ok")
               "init"
           else
               "error"
           end
            
          rescue
            e in ArithmeticError -> e.message
        end
    end

  def init(cadena) do
      case cadena do
          "init" -> :true
          _ -> :false
      end        
  end

  def initialize_context(boolean) when is_boolean(boolean) do

      if boolean do
          IO.puts("=> Initializing context...")
      else
          IO.puts("Context not initialized...")
          :error
      end
  end

  def destroy(boolean) do
    
    case boolean do
        :true -> :ok
        _ -> :error
    end 
      
  end

  def shutdown(dato) do
      IO.puts("Shutdown down...#{dato}")
  end
end
 