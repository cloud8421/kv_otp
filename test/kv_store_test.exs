defmodule KvStoreTest do
  use ExUnit.Case

  test "it stores data" do
    {:ok, store} = KvStore.start_link
    assert :ok == KvStore.set(store, :foo, "bar")
    assert "bar" == KvStore.get(store, :foo)
    assert :ok == KvStore.delete(store, :foo)
    assert nil == KvStore.get(store, :foo)
  end
end
