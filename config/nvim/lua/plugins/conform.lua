return {
    "stevearc/conform.nvim",
    opts = {
        -- Map of filetype to formatters
        formatters_by_ft = {
            java = {"google-java-format"},
        },
        -- Set the log level. Use `:ConformInfo` to see the location of the log file.
        log_level = vim.log.levels.ERROR,
        -- Conform will notify you when a formatter errors
        notify_on_error = true,
        -- Custom formatters and changes to built-in formatters
    },
}
