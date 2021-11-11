defmodule LiveViewEspecWeb.AccountsLiveSpec do
  use ESpec.Phoenix, controller: LiveViewEspecWeb.UserLive.Index, async: false

  import Phoenix.LiveViewTest

  describe "GET /accounts" do
    it "displays the page" do
      {:ok, page_live, disconnected_html} = live(build_conn, "/live/accounts")
      assert disconnected_html =~ "My App's Title"
      assert render(page_live) =~ "My App's Title"
    end
  end
end
