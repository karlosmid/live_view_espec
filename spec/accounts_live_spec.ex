defmodule LiveViewEspecWeb.AccountsLiveSpec do
  #import Phoenix.LiveViewTest
  use ESpec.Phoenix, live_view: LiveViewEspecWeb.UserLive.Index, async: false, pid: self()


  describe "GET /accounts" do
    it "displays the page" do
      {:ok, page_live, disconnected_html} = live(live_conn(), "/live/accounts")
      expect disconnected_html |> to(match "Listing Users")
      expect render(page_live) |> to(match "Listing Users")
    end
  end
end
