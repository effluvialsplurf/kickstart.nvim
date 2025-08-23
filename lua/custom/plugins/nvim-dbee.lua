-- a plugin for using a db in nvim
return {
  'kndndrj/nvim-dbee',
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
  build = function()
    -- Install tries to automatically detect the install method.
    -- if it fails, try calling it with one of these parameters:
    --    "curl", "wget", "bitsadmin", "go"
    require('dbee').install()
  end,
  config = function()
    require('dbee').setup {
      sources = {
        {
          id = '',
          type = 'sqlite3',
          db = '~/test.db',
          name = 'my test db for learnin',
        },
      },
    }
  end,
}
