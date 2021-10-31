import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :tyler, Tyler.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "nduocdx49cuvfPqS8QB0qcT0lhh8NOmRgzeTnesx35qin8NU9LsA/VmuEj3wz5yR",
  server: false

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :hello, Hello.Repo,
  username: "postgres",
  password: "postgres",
  database: "hello_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hello, HelloWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "KbW/t0sURE19gzqcTA7AXOn4eoepRAuHoWS1t5Y8X4biRjg1t1wc9pblGLrgqjHP",
  server: false

# In test we don't send emails.
config :hello, Hello.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
