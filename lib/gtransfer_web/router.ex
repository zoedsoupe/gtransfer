defmodule GtransferWeb.Router do
  use GtransferWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {GtransferWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", GtransferWeb do
    pipe_through :browser
  end

  # Other scopes may use custom stacks.
  # scope "/api", GtransferWeb do
  #   pipe_through :api
  # end
end
