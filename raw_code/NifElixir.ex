defmodule NifElixir do
  @on_load :load_nifs
  
  def load_nifs do
    :erlang.load_nif('./nifelixir', 0)
  end

  def foo(_a) do
    raise "NIF foo/1 not implemented"  
  end

  def bar(_b) do
    raise "NIF bar/1 not implemented"  
  end
end
