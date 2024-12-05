vim.filetype.add {
  pattern = {
    ["${NU_HOME}/.*/resources/.*_config.edn.base"] = "clojure",
    ["${NU_HOME}/.*/resources/.*_config.json.base"] = "json",
  },
}
