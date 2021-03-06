local status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'bash',
    'bibtex',
    'c',
    'c_sharp',
    'cmake',
    'comment',
    'cpp',
    'css',
    'dart',
    'devicetree',
    'dockerfile',
    'dot',
    'elixir',
    'elm',
    'erlang',
    'go',
    'graphql',
    'haskell',
    'hcl',
    'hjson',
    'html',
    'http',
    'java',
    'javascript',
    'jsdoc',
    'json',
    'json5',
    'julia',
    'kotlin',
    'latex',
    'ledger',
    'lua',
    'make',
    'ninja',
    'norg',
    'ocaml',
    'org',
    'pascal',
    'perl',
    'php',
    'phpdoc',
    'prisma',
    'pug',
    'python',
    'r',
    'regex',
    'ruby',
    'rust',
    'scala',
    'scheme',
    'scss',
    'solidity',
    'sparql',
    'supercollider',
    'surface',
    'svelte',
    'swift',
    'toml',
    'tsx',
    'turtle',
    'typescript',
    'v',
    'vala',
    'vim',
    'vue',
    'yaml',
  },
  sync_install = false,
  ignore_install = {},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
