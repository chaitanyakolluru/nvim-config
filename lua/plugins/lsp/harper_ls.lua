local lspconfig = require("lspconfig")
lspconfig.harper_ls.setup {
  settings = {
    ["harper-ls"] = {
      linters = {
        spell_check = false,
        spelled_numbers = false,
        an_a = true,
        sentence_capitalization = true,
        unclosed_quotes = true,
        wrong_quotes = false,
        long_sentences = true,
        repeated_words = true,
        spaces = true,
        matcher = true,
        correct_number_suffix = true,
        number_suffix_capitalization = true,
        multiple_sequential_pronouns = true,
        linking_verbs = false,
        avoid_curses = true,
        terminating_conjunctions = true
      }
    }
  },
}

