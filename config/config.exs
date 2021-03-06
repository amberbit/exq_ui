use Mix.Config

config :logger, :console, format: "\n$date $time [$level]: $message \n"

config :exq,
  host: "127.0.0.1",
  port: 6379,
  namespace: "exq",
  queues: ["default"],
  scheduler_enable: true,
  concurrency: 100,
  scheduler_poll_timeout: 200,
  poll_timeout: 100,
  redis_timeout: 5000,
  genserver_timeout: 5000,
  max_retries: 25,
  json_library: Jason

config :exq_ui,
  web_port: 4040,
  web_namespace: "",
  server: true

import_config "#{Mix.env()}.exs"
