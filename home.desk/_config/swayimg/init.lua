-- general

-- disable floating window
swayimg.enable_overlay(false)

swayimg.text.set_timeout(0)
swayimg.text.set_foreground(0xffeeeeee)
swayimg.text.set_background(0x88000000)

swayimg.viewer.set_text("topleft", {"{name}"})
swayimg.viewer.set_text("topright", {"{frame.width}x{frame.height}"})
swayimg.viewer.set_text("bottomright", {"{list.index}/{list.total}"})

-- keybindings

swayimg.viewer.on_key("q", function()
   swayimg.exit()
end)

swayimg.viewer.on_key("i", function()
   if swayimg.text.visible() then
      swayimg.text.hide()
   else
      swayimg.text.show()
   end
end)

swayimg.viewer.on_key("h", function()
   swayimg.viewer.switch_image("prev")
end)

swayimg.viewer.on_key("l", function()
   swayimg.viewer.switch_image("next")
end)

