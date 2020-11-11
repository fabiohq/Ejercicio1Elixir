import Facade
facade = %ScheduleServer{}
resultado = Facade.start_server(facade.content,2)
IO.puts("====> resultado start_server #{resultado}")

resultado = Facade.stop_server(facade.content,true)
IO.puts("====> resultado start_server #{resultado}")