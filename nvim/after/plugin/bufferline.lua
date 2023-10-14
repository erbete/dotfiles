local status, bufline = pcall(require, "bufferline")
if (not status) then return end

bufline.setup()
