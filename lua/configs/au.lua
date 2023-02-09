--------------------------
-- Terminal Preferences --
--------------------------
vim.cmd([[
    aug TermCustom
        au!
        au TermOpen * startinsert | setlocal list
    aug end
]])

----------------------------
-- Dynamic Line Numbering --
----------------------------
vim.cmd([[
    let goyo_active = 0
    aug DynamicLines
        au!
        au! User GoyoEnter let goyo_active = 1
        au! User GoyoLeave let goyo_active = 0
        au InsertEnter <buffer> if !goyo_active | set norelativenumber | endif | au InsertLeave <buffer> if !goyo_active | set relativenumber | endif
    aug end
]])

----------------------------
-- C Programming Template --
----------------------------
vim.cmd([[
    aug CTemplate
        au!
        au BufNewFile *.c 0r ~/.programmingTemplates/C/standardTemplate.c
        au BufNewFile *.h 0r ~/.programmingTemplates/C/headerFileTemplate.h | %s/<$fnameHash$$?>/\=toupper(substitute(expand('%:t:r'), ' ', '_', 'g'))/
    aug end
]])

------------------------------
-- C++ Programming Template --
------------------------------
vim.cmd([[
    au BufNewFile *
        \ if match(expand('%:t'), '^cmp.*\.cpp$') == 0 |
        \   0r ~/.programmingTemplates/CPP/competitiveTemplate.cpp |
        \ elseif match(expand('%:t'), '.*\.cpp$') == 0 |
        \   0r ~/.programmingTemplates/CPP/standardTemplate.cpp |
        \ endif
]])

-------------------------------
-- Java Programming Template --
-------------------------------
vim.cmd([[
    au BufNewFile *
        \ if match(expand('%:t'), '.*Main\.java$') == 0 |
        \   0r ~/.programmingTemplates/Java/standardClassTemplate.java | %s/<$fnameHash$$?>/\=expand('%:t:r')/ | 
        \ elseif match(expand('%:t'), '.*\.java$') == 0 |
        \   0r ~/.programmingTemplates/Java/classTemplate.java | %s/<$fnameHash$$?>/\=expand('%:t:r')/ | 
        \ endif
]])

---------------------------------
-- Python Programming Template --
---------------------------------
vim.cmd([[
    au BufNewFile *.py 0r ~/.programmingTemplates/Python/standardPythonTemplate.py | %s/<$fnameHash$$?>/\=expand('%:t:r')/
]])

------------------------------------------
-- Assembly S File Programming Template --
------------------------------------------
vim.cmd([[
    au BufNewFile *.s 0r ~/.programmingTemplates/Assembly/SFileTemplate.s | %s/<$fnameHash$$?>/\=expand('%:t:r')/
]])

------------------------------------------
-- Assembly ASM File Programming Template --
------------------------------------------
vim.cmd([[
    au BufNewFile *.asm 0r ~/.programmingTemplates/Assembly/ASMFileTemplate.asm | %s/<$fnameHash$$?>/\=expand('%:t:r')/
]])

---------------------
-- Welcome Message --
---------------------
vim.cmd([[
    function! CursorToMainFunction()
        let file_extension = toupper(fnamemodify(bufname('%'), ':e'))
        if file_extension == '' && !&readonly
            return 0
        else
            try
                execute '/main('
                normal n
                normal jA
                normal zz
                return 0
            catch /^Vim\%((\a\+)\)\=:E486/
            endtry

            try
                execute '/__name__'
                normal njA
                return 0
            catch /^Vim\%((\a\+)\)\=:E486/
            endtry

            try
                execute '/_start'
                normal nnjA
                return 0
            catch /^Vim\%((\a\+)\)\=:E486/
            endtry
        endif
    endfunction

    function! WelcomeMessage()
        let file_extension = toupper(fnamemodify(bufname('%'), ':e'))
        if file_extension != '' && !&readonly
            let message = "You are currently editing "
            let first_letter = substitute(file_extension, '\(.\).*', '\1', '')
            if first_letter =~ '^[aeiouAEIOU]'
                echo message . "an " . file_extension . " file! "
            else
                echo message . "a " . file_extension . " file! "
            endif
        else
            echo ""
        endif
    endfunction

    function! CleanseMessageBox(timer)
        echo ""
    endfunction

    let g:f = bufnr('$')

    aug FileEnter
        au!
        au VimEnter * if expand('%:t') != 'init.vim' | call CursorToMainFunction() | endif | 
            \ if bufnr('$') >= g:f | let g:f += 1 | call WelcomeMessage() | endif |
            \ let timer = timer_start(3000, 'CleanseMessageBox') 
        au BufReadPost *.s set ft=asm
    aug end
]])

---------------------------
-- Highlight yanked text --
---------------------------
vim.cmd([[
    augroup YankHighlight
        au!
        au TextYankPost * silent! lua vim.highlight.on_yank()
    aug end
]])

------------------------------------------
-- Go to last cursor location on buffer --
------------------------------------------
vim.cmd([[
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
]])
