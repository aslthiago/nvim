local status_ok, lush = pcall(require, 'lush')
if not status_ok then
  return
end

local hsl = lush.hsl

local color0  = hsl('#000000')
local color1  = hsl('#8c3f3c')
local color2  = hsl('#6a8759')
local color3  = hsl('#e59c19')
local color4  = hsl('#6897bb')
local color5  = hsl('#9876aa')
local color6  = hsl('#cc7832')
local color7  = hsl('#a8c023')
local color8  = hsl('#ffc66d')
local color15 = hsl('#ffffff')

local theme = lush(function()
  return {
    Normal       { bg = color0, fg = color15 },
    Visual       { bg = color0.li(10) },
    CursorLine   { bg = color0.li(5).mix(color2, 25) },
    SignColumn   { bg = color0.li(10) },
    FoldColumn   { bg = color0.li(10) },
    MatchParen   { bg = color0.li(25).mix(color1, 25) },
    StatusLine   { bg = color0.li(10) },
    LineNr       { bg = color0.li(10) },
    CursorLineNr { bg = color0.li(10) },
    ColorColumn  { bg = color0.li(10) },
    Pmenu        { bg = color0.li(10) },
    EndOfBuffer  { bg = color0.li(10) }, 
    MsgArea      { bg = color0.li(10) },
    NonText      { fg = color0.li(25).mix(color1, 25)  },
    StatusLineNC { bg = color0.li(10) },
    VertSplit    { bg = color0.li(10) },   

    TabLine      { bg = color0.li(10) },
    TabLineFill  { TabLine },
    TabLineSel   { TabLine },
    Title        { fg = color2 },
    Directory    { fg = color2 },
    ErrorMsg     { fg = color1.li(25).mix(color3, 15) },
    Whitespace   { fg = color8.li(25).mix(color7, 15), gui='underline' },
    Question     { bg = color0.li(10), fg = color3.li(25) },
    WarningMsg   { fg = color1.li(25).mix(color3, 15) },

    Substitute   { bg = color3.de(25).da(15).mix(color5, 25) },

    -- NormalFloat  { }, -- Normal text in floating windows.
    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    -- DiffAdd      { }, -- diff mode: Added line |diff.txt|
    -- DiffChange   { }, -- diff mode: Changed line |diff.txt|
    -- DiffDelete   { }, -- diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    -- Folded       { }, -- line used for closed folds
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    -- NormalNC     { }, -- normal text in non-current windows
    -- Pmenu        { }, -- Popup menu: normal item.
    -- PmenuSel     { }, -- Popup menu: selected item.
    -- PmenuSbar    { }, -- Popup menu: scrollbar.
    -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace| 
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise. 
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WildMenu     { }, -- current match in 'wildmenu' completion
  }
end)

return theme

-- vi:nowrap
