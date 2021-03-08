defmodule Desafio02FiltragemEmListasTest do
  use ExUnit.Case

  describe "call/1" do
    test "conta os números impartes" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      response = Desafio02FiltragemEmListas.call(list)

      expect = 3

      assert expect == response
    end
  end
end
