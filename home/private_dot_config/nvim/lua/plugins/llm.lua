return {
    "huggingface/llm.nvim",
    opts = {
        model = "codellama",
        url = "http://localhost:11434", -- llm-ls uses "/api/generate"
        -- cf https://github.com/ollama/ollama/blob/main/docs/api.md#parameters
        request_body = {
            -- Modelfile options for the model you use
            options = {temperature = 0.2, top_p = 0.95}
        },
        tokens_to_clear = {"<EOT>"},
        fim = {
            enabled = true,
            prefix = "<PRE> ",
            middle = " <MID>",
            suffix = " <SUF>"
        },
        backend = "ollama",
        accept_keymap = "<C-]>",
        decline_keymap = "<C-Backslash>",
        enable_suggestions_on_startup = false
    }
}
