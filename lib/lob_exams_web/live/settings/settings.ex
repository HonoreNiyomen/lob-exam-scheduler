defmodule LobExamsWeb.Live.Settings do
  use LobExamsWeb, :live_view

  alias LobExamsWeb.Live.AdminSettings, as: AS
  alias LobExamsWeb.Live.DefaultSettings, as: DS
  alias LobExamsWeb.Live.IntitutionSettings, as: IS

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :page_title, "Settings")}
  end

  @impl true
  def render(assigns) do
    case assigns[:current_user].role do
      "admin" ->
        ~H"""
        {AS.admin_settings(assigns)}
        """

      "university" ->
        ~H"""
        {IS.institution_settings(assigns)}
        """

      _ ->
        ~H"""
        {DS.default_settings(assigns)}
        """

    end
  end
end
