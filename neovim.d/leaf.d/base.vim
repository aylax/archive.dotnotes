"=============================================================================
" base.vim --- Basic
" Copyright (c) 2021-20xx AyLax.Zhou
" Author: AyLax.Zhou < zhoubye@foxmail.com >
" License: GPLv3
"=============================================================================

" Sets no backup
set nobackup       " no backup files
set noswapfile     " no swap files
set nowritebackup  " no write backup file
set noundofile     " no undo files

" Sets disable vi mode
set nocompatible

" Sets reserved history lines
set history=240

" Sets filetype plugin on
filetype plugin on
filetype indent on

" Sets map leader
let mapleader = ";"

" Sets basic encoding
set encoding=utf8

" Sets plain text format
set syntax=on                     " Syntax on
set expandtab                     " Replace <tab> as <space>
set shiftwidth=4                  " Indent width
set tabstop=4                     " Display tab width
set softtabstop=4                 " Tune tab on vim insert mode
set backspace=2                   " Backspace with
set ruler                         " Open status bar ruler
set cursorline                    " Highlight the current line
set number                        " Show line number
set showmatch                     " Highlight matched brackets
set matchtime=1                   " Brackets highlight residence time

" Sets status line
set laststatus=2
let sheader1 = "%1*\ %<%.50F %= \%*"
let smarker1 = "%2*\ %y%m%r%h%w \%*"
let smarker2 = "%3*\ [%{&ff}][%{&fenc}] \%*"
let sfooter1 = "%4*\ (%l, %c) \%*"
let sfooter2 = "%5*\ %3p%% \%*"
let sheadera = sheader1
let smarkera = smarker1.smarker2
let sfootera = sfooter1.sfooter2
let sformata = sheadera.smarkera.sfootera
set statusline=%!sformata
