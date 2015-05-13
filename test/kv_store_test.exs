defmodule KvStoreTest do
  use ExUnit.Case

  test "it stores data" do
    assert :ok == KvStore.set(:foo, "bar")
    assert "bar" == KvStore.get(:foo)
    assert :ok == KvStore.update(:foo, &String.upcase/1)
    assert "BAR" == KvStore.get(:foo)
    assert :ok == KvStore.delete(:foo)
    assert nil == KvStore.get(:foo)
  end
end
