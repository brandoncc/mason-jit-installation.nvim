M = {}

local formatted_message = function(msg)
  return "[mason-jit-installation] " .. msg
end

local function setup_lspconfig_jit(opts)
  local is_available, lspconfig_jit = pcall(require, "mason-lspconfig-jit-installation")
  if not is_available then
    error(formatted_message("mason-lspconfig-jit-installation plugin not available"))
  end

  lspconfig_jit.setup(opts)
end

local function setup_null_ls_jit(opts)
  local is_available, null_ls_jit = pcall(require, "mason-null-ls-jit-installation")
  if not is_available then
    error(formatted_message("mason-null-ls-jit-installation plugin not available"))
  end

  null_ls_jit.setup(opts)
end

function M.setup(opts)
  opts = opts or {}

  for jit_plugin, jit_opts in pairs(opts) do
    if jit_plugin == "lspconfig" then
      setup_lspconfig_jit(jit_opts)
    elseif jit_plugin == "null-ls" then
      setup_null_ls_jit(jit_opts)
    else
      error("Unknown JIT plugin: " .. jit_plugin)
    end
  end
end

return M
