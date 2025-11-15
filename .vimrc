" general
set number
set relativenumber
set tabstop=2        " Set the number of spaces a tab character represents
set shiftwidth=2     " Set the number of spaces for auto-indentation

" remapping
let mapleader = " "
nnoremap <leader>pe :Ex<CR>


"
" buffers related mappings
"
nnoremap <leader>bl :buffers<CR>

"" next buffer
nnoremap <C-n> :bnext<CR>             

"" previous buffer
nnoremap <C-p>bp :bprev<CR>

nnoremap <leader>b1 :buffer 1<CR>
nnoremap <leader>b2 :buffer 2<CR>
nnoremap <leader>b3 :buffer 3<CR>
nnoremap <leader>b4 :buffer 4<CR>
nnoremap <leader>b5 :buffer 5<CR>
nnoremap <leader>b6 :buffer 6<CR>
nnoremap <leader>b7 :buffer 7<CR>
nnoremap <leader>b8 :buffer 8<CR>
nnoremap <leader>b9 :buffer 9<CR>

"
" window related mappings
"
" Remap Ctrl-h to move left
nnoremap <C-h> <C-w>h
" Remap Ctrl-j to move down
nnoremap <C-j> <C-w>j
" Remap Ctrl-k to move up
nnoremap <C-k> <C-w>k
" Remap Ctrl-l to move right
nnoremap <C-l> <C-w>l

"
" Custom
"
function! InsertHelloWorld()
  " Move to the current line and insert a new line
  normal! o
  " Insert 'Hello World'
  normal! iHello World
endfunction

nnoremap <Leader>hw :call InsertHelloWorld()<CR>

" HTML tag
function! InsertHtmlTag(tag)
  " Create the HTML tag with the provided argument
  execute "normal! i<" . a:tag . "></" . a:tag . ">"
  " Move the cursor to the middle of the tag
  normal! F<l
	normal! h
  " Switch to insert mode
  startinsert
endfunction
