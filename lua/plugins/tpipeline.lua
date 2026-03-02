-- return {}
return {
  "vimpostor/vim-tpipeline",
  config = function()
    -- vim.g.tpipeline_status_right = "#[fg=color249]#W :: #S#[default]"
    vim.g.tpipeline_autoembed = 1
    vim.opt.laststatus = 0
  end
}
