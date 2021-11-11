defmodule ESpec.Phoenix.Extend do
  def model do
    quote do
      alias LiveViewEspec.Repo
    end
  end

  def controller do
    quote do
      alias LiveViewEspec
      import LiveViewEspecWeb.Router.Helpers

      @endpoint LiveViewEspecWeb.Endpoint
    end
  end

  def view do
    quote do
      import LiveViewEspecWeb.Router.Helpers
    end
  end

  def channel do
    quote do
      alias LiveViewEspec.Repo

      @endpoint LiveViewEspecWeb.Endpoint
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
