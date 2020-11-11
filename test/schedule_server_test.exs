defmodule ScheduleServerTest do
    use ExUnit.Case
    doctest ScheduleServer
  
    test "read_sistem_config_file valida parametro nil" do
        assert ScheduleServer.read_sistem_config_file(nil) == "bad argument in arithmetic expression"
    end

    test "read_sistem_config_file valida parametro diferente de numero entero" do
        assert ScheduleServer.read_sistem_config_file("***") == "bad argument in arithmetic expression"
    end

    test "read_sistem_config_file valida parametro valor cero" do
        assert ScheduleServer.read_sistem_config_file(0) == "init"
    end

    test "read_sistem_config_file valida num par" do
      assert ScheduleServer.read_sistem_config_file(2) == "init"
    end

    test "read_sistem_config_file valida number impar" do
        assert ScheduleServer.read_sistem_config_file(1) == "error"
    end



    
    test "init valida parametro nil" do
        assert ScheduleServer.init(nil) == :false
    end

    test "init valida parametro diferente de cadena" do
        assert ScheduleServer.init(1) == :false
    end  

    test "init valida parametro valor vacio" do
        assert ScheduleServer.init("") == :false
    end 

    test "init valida parametro valor init" do
        assert ScheduleServer.init("init") == :true
    end 

    test "init valida parametro valor diferente init" do
        assert ScheduleServer.init("hola") == :false
    end



    test "initialize_context valida parametro valor true" do
        assert ScheduleServer.initialize_context(true) == :ok
    end

    test "initialize_context valida parametro valor false" do
        assert ScheduleServer.initialize_context(false) == :error
    end 





    test "destroy valida parametro valor diferente de boolean" do
        assert ScheduleServer.destroy("^^") == :error
    end

    test "destroy valida parametro valor true" do
        assert ScheduleServer.destroy(true) == :ok
    end

    test "destroy valida parametro valor false" do
        assert ScheduleServer.destroy(false) == :error
    end 



    test "shutdown valida parametro" do
        assert ScheduleServer.shutdown(false) == :ok
    end 

    

  end