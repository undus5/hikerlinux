-- put user settings here
-- this module will be loaded after everything else when the application starts
-- it will be automatically reloaded when saved

local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

------------------------------ Fonts -----------------------------------------

-- https://lite-xl.com/user-guide/configuration/#fonts

local fontDir = USERDIR .. "/fonts/"

local fontPath = fontDir .. "JetBrainsMonoNL-Regular.ttf"
local fontPathSC = fontDir .. "SarasaTermSC-Regular.ttf"
local fontPathTC = fontDir .. "SarasaTermTC-Regular.ttf"
local fontPathJP = fontDir .. "SarasaTermJ-Regular.ttf"
local fontPathKR = fontDir .. "SarasaTermK-Regular.ttf"

local fontPathI = fontDir .. "JetBrainsMonoNL-Italic.ttf"
local fontPathSCI = fontDir .. "SarasaTermSC-Italic.ttf"
local fontPathTCI = fontDir .. "SarasaTermTC-Italic.ttf"
local fontPathJPI = fontDir .. "SarasaTermJ-Italic.ttf"
local fontPathKRI = fontDir .. "SarasaTermK-Italic.ttf"

local load = renderer.font.load
local fontSize = SCALE * 16
local loadedFonts = {}
local fontFile

-- code font

fontFile = io.open(fontPath, "r")
if fontFile then
  io.close(fontFile)
  table.insert(loadedFonts, load(fontPath, fontSize))
end

fontFile = io.open(fontPathSC, "r")
if fontFile then
  io.close(fontFile)
  table.insert(loadedFonts, load(fontPathSC, fontSize))
end

fontFile = io.open(fontPathTC, "r")
if fontFile then
  io.close(fontFile)
  table.insert(loadedFonts, load(fontPathTC, fontSize))
end

fontFile = io.open(fontPathJP, "r")
if fontFile then
  io.close(fontFile)
  table.insert(loadedFonts, load(fontPathJP, fontSize))
end

fontFile = io.open(fontPathKR, "r")
if fontFile then
  io.close(fontFile)
  table.insert(loadedFonts, load(fontPathKR, fontSize))
end

fontFile = io.open(fontPathI, "r")
if fontFile then
  io.close(fontFile)
  table.insert(loadedFonts, load(fontPathI, fontSize))
end

fontFile = io.open(fontPathSCI, "r")
if fontFile then
  io.close(fontFile)
  table.insert(loadedFonts, load(fontPathSCI, fontSize))
end

fontFile = io.open(fontPathTCI, "r")
if fontFile then
  io.close(fontFile)
  table.insert(loadedFonts, load(fontPathTCI, fontSize))
end

fontFile = io.open(fontPathJPI, "r")
if fontFile then
  io.close(fontFile)
  table.insert(loadedFonts, load(fontPathJPI, fontSize))
end

fontFile = io.open(fontPathKRI, "r")
if fontFile then
  io.close(fontFile)
  table.insert(loadedFonts, load(fontPathKRI, fontSize))
end

if #loadedFonts > 0 then
  style.font = renderer.font.group(loadedFonts)
  style.code_font = renderer.font.group(loadedFonts)
end

------------------------------ Themes ----------------------------------------

-- light theme:
-- core.reload_module("colors.summer")

--------------------------- Key bindings -------------------------------------

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }

-- pass 'true' for second parameter to overwrite an existing binding
-- keymap.add({ ["ctrl+pageup"] = "root:switch-to-previous-tab" }, true)
-- keymap.add({ ["ctrl+pagedown"] = "root:switch-to-next-tab" }, true)

------------------------------- Fonts ----------------------------------------

-- customize fonts:
-- style.font = renderer.font.load(DATADIR .. "/fonts/FiraSans-Regular.ttf", 14 * SCALE)
-- style.code_font = renderer.font.load(DATADIR .. "/fonts/JetBrainsMono-Regular.ttf", 14 * SCALE)
--
-- DATADIR is the location of the installed Lite XL Lua code, default color
-- schemes and fonts.
-- USERDIR is the location of the Lite XL configuration directory.
--
-- font names used by lite:
-- style.font          : user interface
-- style.big_font      : big text in welcome screen
-- style.icon_font     : icons
-- style.icon_big_font : toolbar icons
-- style.code_font     : code
--
-- the function to load the font accept a 3rd optional argument like:
--
-- {antialiasing="grayscale", hinting="full", bold=true, italic=true, underline=true, smoothing=true, strikethrough=true}
--
-- possible values are:
-- antialiasing: grayscale, subpixel
-- hinting: none, slight, full
-- bold: true, false
-- italic: true, false
-- underline: true, false
-- smoothing: true, false
-- strikethrough: true, false

------------------------------ Plugins ----------------------------------------

-- disable plugin loading setting config entries:

-- disable plugin detectindent, otherwise it is enabled by default:
-- config.plugins.detectindent = false

---------------------------- Miscellaneous -------------------------------------

-- modify list of files to ignore when indexing the project:
-- config.ignore_files = {
--   -- folders
--   "^%.svn/",        "^%.git/",   "^%.hg/",        "^CVS/", "^%.Trash/", "^%.Trash%-.*/",
--   "^node_modules/", "^%.cache/", "^__pycache__/",
--   -- files
--   "%.pyc$",         "%.pyo$",       "%.exe$",        "%.dll$",   "%.obj$", "%.o$",
--   "%.a$",           "%.lib$",       "%.so$",         "%.dylib$", "%.ncb$", "%.sdf$",
--   "%.suo$",         "%.pdb$",       "%.idb$",        "%.class$", "%.psd$", "%.db$",
--   "^desktop%.ini$", "^%.DS_Store$", "^%.directory$",
-- }

