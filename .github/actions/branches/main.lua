local branch = arg[1] or os.getenv("GITHUB_REF_NAME") or ""
if branch ~= "main" then
  io.stderr:write("unsupported authored branch: " .. tostring(branch) .. "\n")
  os.exit(1)
end
