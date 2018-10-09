function! tokyometro#palette#dark#create() abort
  let hue_base = 230

  let hue_chiyoda = 152
  let hue_fukutoshin = 26
  let hue_ginza = 32
  let hue_hanzomon = 254
  let hue_marunouchi = 1
  let hue_nanboku = 171
  let hue_tozai = 197
  let hue_yurakucho = 39

  " gui {{{
  let g = {}

  " palette
  let g.chiyoda  = pgmnt#color#hsl(hue_chiyoda,  0.41, 0.53)
  let g.fukutoshin = pgmnt#color#hsl(hue_fukutoshin,    0.43, 0.40)
  let g.ginza = pgmnt#color#hsl(hue_ginza, 0.87, 0.58)
  let g.hanzomon = pgmnt#color#hsl(hue_hanzomon, 0.49, 0.64)
  let g.marunouchi    = pgmnt#color#hsl(hue_marunouchi,    0.74, 0.57)
  let g.nanboku  = pgmnt#color#hsl(hue_nanboku,  0.37, 0.48)
  let g.tozai   = pgmnt#color#hsl(hue_tozai,   0.47, 0.50)
  let g.yurakucho  = pgmnt#color#hsl(hue_yurakucho,  0.35, 0.60)

  " normal
  let g.normal_bg = pgmnt#color#hsl(hue_base, 0.20, 0.11)
  let g.normal_fg = pgmnt#color#hsl(hue_base, 0.05, 0.69)

  " tint
  let g.chiyoda_tint_bg  = pgmnt#color#mix(g.chiyoda, g.normal_bg, 0.30)
  let g.chiyoda_tint_fg  = pgmnt#color#mix(g.chiyoda, g.normal_fg, 0.30)
  let g.hanzomon_tint_bg = pgmnt#color#mix(g.hanzomon, g.normal_bg, 0.30)
  let g.hanzomon_tint_fg = pgmnt#color#mix(g.hanzomon, g.normal_fg, 0.30)
  let g.marunouchi_tint_bg    = pgmnt#color#mix(g.marunouchi, g.normal_bg, 0.30)
  let g.marunouchi_tint_fg    = pgmnt#color#mix(g.marunouchi, g.normal_fg, 0.30)
  let g.tozai_tint_bg   = pgmnt#color#mix(g.tozai, g.normal_bg, 0.30)
  let g.tozai_tint_fg   = pgmnt#color#mix(g.tozai, g.normal_fg, 0.30)
  let g.yurakucho_tint_bg  = pgmnt#color#mix(g.yurakucho, g.normal_bg, 0.30)
  let g.yurakucho_tint_fg  = pgmnt#color#mix(g.yurakucho, g.normal_fg, 0.30)

  " linenr
  let g.linenr_bg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.05,
        \   'lightness': +0.05,
        \ })
  let g.linenr_fg = pgmnt#color#lighten(g.linenr_bg, 0.20)
  let g.cursorlinenr_bg = pgmnt#color#adjust_color(
        \ g.linenr_bg, {
        \   'saturation': +0.10,
        \   'lightness': +0.10,
        \ })
  let g.cursorlinenr_fg = pgmnt#color#adjust_color(
        \ g.linenr_fg, {
        \   'saturation': +0.10, 
        \   'lightness': +0.50,
        \ })

  " statusline
  let g.statusline_bg = pgmnt#color#hsl(hue_base, 0.09, 0.55)
  let g.statusline_fg = pgmnt#color#hsl(hue_base, 0.09, 0.10)
  let g.statuslinenc_bg = pgmnt#color#darken(g.normal_bg, 0.03)
  let g.statuslinenc_fg = pgmnt#color#lighten(g.normal_bg, 0.20)

  " pmenu
  let g.pmenu_bg = pgmnt#color#hsl(hue_base, 0.20, 0.30)
  let g.pmenu_fg = g.normal_fg
  let g.pmenusel_bg = pgmnt#color#hsl(hue_base, 0.20, 0.45)
  let g.pmenusel_fg = pgmnt#color#hsl(hue_base, 0.20, 0.95)

  " misc
  let g.comment_fg = pgmnt#color#hsl(hue_base, 0.12, 0.48)
  let g.cursorline_bg = g.linenr_bg
  let g.folded_bg = g.linenr_bg
  let g.folded_fg = pgmnt#color#adjust_color(
        \ g.folded_bg, {
        \   'saturation': -0.05,
        \   'lightness': +0.35,
        \ })
  let g.matchparen_bg = pgmnt#color#lighten(g.normal_bg, 0.20)
  let g.matchparen_fg = pgmnt#color#lighten(g.normal_fg, 0.50)
  let g.search_bg = pgmnt#color#hsl(hue_ginza, 0.65, 0.70)
  let g.search_fg = pgmnt#color#hsl(hue_ginza, 0.50, 0.15)
  let g.specialkey_fg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.08,
        \   'lightness': +0.09,
        \ })
  let g.todo_bg = g.yurakucho_tint_bg
  let g.todo_fg = g.yurakucho
  let g.visual_bg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.05,
        \   'lightness': +0.10,
        \ })
  let g.wildmenu_bg = pgmnt#color#lighten(g.statusline_bg, 0.30)
  let g.wildmenu_fg = g.statusline_fg

  " airline/lightline
  let g.xline_base_bg = pgmnt#color#lighten(g.normal_bg, 0.15)
  let g.xline_base_fg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': -0.10,
        \   'lightness': +0.35,
        \ })
  let g.xline_edge_bg = g.statusline_bg
  let g.xline_edge_fg = g.statusline_fg
  let g.xline_gradient_bg = pgmnt#color#mix(g.xline_base_bg, g.xline_edge_bg, 0.50)
  let g.xline_gradient_fg = g.xline_edge_fg

  " plugins
  let g.easymotion_shade_fg = pgmnt#color#hsl(hue_base, 0.20, 0.30)
  " }}}

  " cterm {{{
  let c = {}

  " palette
  let c.chiyoda = 41
  let c.fukutoshin = 94
  let c.ginza = 215
  let c.hanzomon = 141
  let c.marunouchi = 196
  let c.nanboku = 43
  let c.tozai = 38
  let c.yurakucho = 180

  " normal
  let c.normal_bg = 234
  let c.normal_fg = 252

  " tint
  let c.chiyoda_tint_bg   = 35
  let c.chiyoda_tint_fg   = 115
  let c.fukutoshin_tint_bg   = 58
  let c.fukutoshin_tint_fg   = 137
  let c.ginza_tint_bg = 137
  let c.ginza_tint_fg = 181
  let c.hanzomon_tint_bg = 61
  let c.hanzomon_tint_fg = 147
  let c.marunouchi_tint_bg    = 124
  let c.marunouchi_tint_fg    = 224
  let c.nanboku_tint_bg    = 23
  let c.nanboku_tint_fg    = 116
  let c.tozai_tint_bg  = 32
  let c.tozai_tint_fg  = 14
  let c.yurakucho_tint_bg  = 130
  let c.yurakucho_tint_fg  = 224

  " linenr
  let c.linenr_bg = 235
  let c.linenr_fg = 239
  let c.cursorlinenr_bg = 237
  let c.cursorlinenr_fg = 253

  " statusline
  let c.statusline_bg = 245
  let c.statusline_fg = 234
  let c.statuslinenc_bg = 233
  let c.statuslinenc_fg = 238

  " pmenu
  let c.pmenu_bg = 236
  let c.pmenu_fg = 251
  let c.pmenusel_bg = 240
  let c.pmenusel_fg = 255

  " misc
  let c.comment_fg = 243
  let c.cursorline_bg = c.linenr_bg
  let c.folded_bg = c.linenr_bg
  let c.folded_fg = 245
  let c.matchparen_bg = 237
  let c.matchparen_fg = 255
  let c.search_bg = c.ginza
  let c.search_fg = c.normal_bg
  let c.specialkey_fg = 236
  let c.todo_bg = c.normal_bg
  let c.todo_fg = c.yurakucho
  let c.visual_bg = 236
  let c.wildmenu_bg = 255
  let c.wildmenu_fg = c.statusline_fg

  " airline/lightline
  let c.xline_base_bg = 237
  let c.xline_base_fg = 243
  let c.xline_edge_bg = c.statusline_bg
  let c.xline_edge_fg = c.statusline_fg
  let c.xline_gradient_bg = 241
  let c.xline_gradient_fg = c.xline_edge_fg

  " plugins
  let c.easymotion_shade_fg = 239
  " }}}

  return {
        \   'cterm': c,
        \   'gui': g,
        \ }
endfunction
