let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <C-Tab> 	
inoremap <Right> <Nop>
inoremap <Left> <Nop>
inoremap <Up> <Nop>
snoremap <silent> 	 i<Right>=TriggerSnippet()
snoremap  b<BS>
nnoremap   za
snoremap % b<BS>%
snoremap ' b<BS>'
nmap <silent> ,slr :DBListVar
xmap <silent> ,sa :DBVarRangeAssign
nmap <silent> ,sap :'<,'>DBVarRangeAssign
nmap <silent> ,sal :.,.DBVarRangeAssign
nmap <silent> ,sas :1,$DBVarRangeAssign
nmap ,so <Plug>DBOrientationToggle
nmap ,sh <Plug>DBHistory
nmap ,slv <Plug>DBListView
nmap ,slp <Plug>DBListProcedure
nmap ,slt <Plug>DBListTable
xmap <silent> ,slc :exec 'DBListColumn "'.DB_getVisualBlock().'"'
nmap ,slc <Plug>DBListColumn
nmap ,sbp <Plug>DBPromptForBufferParameters
nmap ,sdpa <Plug>DBDescribeProcedureAskName
xmap <silent> ,sdp :exec 'DBDescribeProcedure "'.DB_getVisualBlock().'"'
nmap ,sdp <Plug>DBDescribeProcedure
nmap ,sdta <Plug>DBDescribeTableAskName
xmap <silent> ,sdt :exec 'DBDescribeTable "'.DB_getVisualBlock().'"'
nmap ,sdt <Plug>DBDescribeTable
xmap <silent> ,sT :exec 'DBSelectFromTableTopX "'.DB_getVisualBlock().'"'
nmap ,sT <Plug>DBSelectFromTopXTable
nmap ,sta <Plug>DBSelectFromTableAskName
nmap ,stw <Plug>DBSelectFromTableWithWhere
xmap <silent> ,st :exec 'DBSelectFromTable "'.DB_getVisualBlock().'"'
nmap ,st <Plug>DBSelectFromTable
nmap <silent> ,sep :'<,'>DBExecRangeSQL
nmap <silent> ,sel :.,.DBExecRangeSQL
nmap <silent> ,sea :1,$DBExecRangeSQL
nmap ,sE <Plug>DBExecSQLUnderTopXCursor
nmap ,se <Plug>DBExecSQLUnderCursor
xmap ,sE <Plug>DBExecVisualTopXSQL
xmap ,se <Plug>DBExecVisualSQL
nnoremap ,  :noh
nnoremap ,0 :10b
nnoremap ,9 :9b
nnoremap ,8 :8b
nnoremap ,7 :7b
nnoremap ,6 :6b
nnoremap ,5 :5b
nnoremap ,4 :4b
nnoremap ,3 :3b
nnoremap ,2 :2b
nnoremap ,1 :1b
nnoremap ,g :e#
nnoremap ,f :bn
nnoremap ,b :bp
nnoremap ,l :ls
nnoremap ,h h
nnoremap ,x :x
nnoremap ,w vl
nnoremap ,ev vl:e ~/Dropbox/vim/.vimrc
nnoremap ,v V`]
nnoremap ,a :Ack
nnoremap ,W :%s/\s\+$//:let @/=''
nnoremap ,m :w
nnoremap ,e :w:mks!:q
nnoremap ,t :NERDTreeToggle 
vnoremap / /\v
nnoremap / /\v
nnoremap ; :
map Q gq
xmap S <Plug>VSurround
snoremap U b<BS>U
snoremap \ b<BS>\
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
xmap s <Plug>Vsurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <F2> :NERDTreeToggle
nnoremap <Right> <Nop>
nnoremap <Left> <Nop>
noremap <Down> <Nop>
nnoremap <Up> <Nop>
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =TriggerSnippet()
imap  <Plug>SuperTabForward
imap  <Plug>SuperTabBackward
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
inoremap  u
imap kj 
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set backup
set confirm
set fileencodings=ucs-bom,utf-8,default,latin1
set foldopen=block,hor,mark,percent,quickfix,tag
set gdefault
set helplang=en
set history=500
set hlsearch
set ignorecase
set incsearch
set iskeyword=@,48-57,_,192-255,$
set laststatus=2
set omnifunc=syntaxcomplete#Complete
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/bundle/OmniCppComplete,~/.vim/bundle/The-NERD-tree,~/.vim/bundle/ctags.vim,~/.vim/bundle/dbext.vim,~/.vim/bundle/genutils,~/.vim/bundle/multvals.vim,~/.vim/bundle/project.tar.gz,~/.vim/bundle/snipMate,~/.vim/bundle/supertab,~/.vim/bundle/surround.vim,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-rails,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/bundle/OmniCppComplete/after,~/.vim/bundle/snipMate/after,~/.vim/after,~/Dropbox/vim
set scrolloff=15
set shiftwidth=3
set showcmd
set showmatch
set smartcase
set statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=3
set timeoutlen=250
set updatetime=500
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/dev-ror/learning_rails/sample_app
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +18 Gemfile
badd +249 ~/Dropbox/dev-ror/rails-notes.rb
badd +55 config/database.yml
badd +7 config/routes.rb
badd +16 app/controllers/pages_controller.rb
badd +3 app/views/pages/home.html.erb
badd +64 ~/Dropbox/dev-ror/ruby-language-notes.rb
badd +2 .infinity_test
badd +57 spec/controllers/pages_controller_spec.rb
badd +2 spec/spec_helper.rb
badd +5 app/views/pages/about.html.erb
badd +14 app/views/layouts/application.html.erb
badd +5 app/views/pages/contact.html.erb
badd +1 app/views/pages/help.html.erb
badd +6 app/helpers/application_helper.rb
badd +5 README
badd +13 example_user.rb
badd +114 app/assets/stylesheets/custom.css
badd +9 app/views/layouts/_stylesheets.html.erb
badd +10 app/views/layouts/_header.html.erb
badd +9 app/views/layouts/_footer.html.erb
badd +20 spec/requests/layout_links_spec.rb
args README
edit ~/Dropbox/dev-ror/rails-notes.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=81
setlocal colorcolumn=81
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=100
setlocal foldlevel=100
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,NOTE:\ Gem.all_load_paths\ is\ deprecated\ with\ no\ replacement.\ It\ will\ be\ removed\ on\ or\ after\ 2011-10-01.\
Gem.all_load_paths\ called\ from\ -e:1.\
NOTE:\ Gem.all_partials\ is\ deprecated\ with\ no\ replacement.\ It\ will\ be\ removed\ on\ or\ after\ 2011-10-01.\
Gem.all_partials\ called\ from\ /usr/share/ruby-rvm/rubies/ruby-1.9.2-head/lib/ruby/site_ruby/1.9.1/rubygems.rb:258.\
/usr/share/ruby-rvm/rubies/ruby-1.9.2-head/lib/ruby/site_ruby/1.9.1/rubygems.rb:259:in\ `block\ (2\ levels)\ in\ all_load_paths':\ undefined\ method\ `add'\ for\ \"/usr/share/ruby-rvm/gems/ruby-1.9.2-head\":String\ (NoMethodError)\
\	from\ /usr/share/ruby-rvm/rubies/ruby-1.9.2-head/lib/ruby/site_ruby/1.9.1/rubygems.rb:427:in\ `block\ (2\ levels)\ in\ each_load_path'\
\	from\ /usr/share/ruby-rvm/rubies/ruby-1.9.2-head/lib/ruby/site_ruby/1.9.1/rubygems.rb:426:in\ `each'\
\	from\ /usr/share/ruby-rvm/rubies/ruby-1.9.2-head/lib/ruby/site_ruby/1.9.1/rubygems.rb:426:in\ `block\ in\ each_load_path'\
\	from\ /usr/share/ruby-rvm/rubies/ruby-1.9.2-head/lib/ruby/site_ruby/1.9.1/rubygems.rb:421:in\ `each'\
\	from\ /usr/share/ruby-rvm/rubies/ruby-1.9.2-head/lib/ruby/site_ruby/1.9.1/rubygems.rb:421:in\ `each_load_path'\
\	from\ /usr/share/ruby-rvm/rubies/ruby-1.9.2-head/lib/ruby/site_ruby/1.9.1/rubygems.rb:258:in\ `block\ in\ all_load_paths'\
\	from\ /usr/share/ruby-rvm/rubies/ruby-1.9.2-head/lib/ruby/site_ruby/1.9.1/rubygems.rb:257:in\ `each'\
\	from\ /usr/share/ruby-rvm/rubies/ruby-1.9.2-head/lib/ruby/site_ruby/1.9.1/rubygems.rb:257:in\ `all_load_paths'\
\	from\ /usr/share/ruby-rvm/rubies/ruby-1.9.2-head/lib/ruby/site_ruby/1.9.1/rubygems/deprecate.rb:63:in\ `block\ (2\ levels)\ in\ deprecate'\
\	from\ -e:1:in\ `<main>'\

setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 255 - ((42 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
255
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
