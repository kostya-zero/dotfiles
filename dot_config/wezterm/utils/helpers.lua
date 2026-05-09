local M = {}

function M.basename(path)
	if not path or path == "" then
		return "?"
	end
	path = path:gsub("[/\\]+$", "")
	return path:match("([^/\\]+)$") or path
end

function M.get_cwd_name(pane)
	local cwd = pane.current_working_dir
	if not cwd then
		return "?"
	end
	if cwd.file_path then
		return M.basename(cwd.file_path)
	end
	local s = tostring(cwd)
	s = s:gsub("^file://[^/]*", "")
	s = s:gsub("%%20", " ")
	return M.basename(s)
end

return M
