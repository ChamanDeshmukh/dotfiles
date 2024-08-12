"   _____ _   _ _________________ _____ _____ _____ 
"  /  ___| \ | |_   _| ___ \ ___ \  ___|_   _/  ___|
"  \ `--.|  \| | | | | |_/ / |_/ / |__   | | \ `--. 
"   `--. \ . ` | | | |  __/|  __/|  __|  | |  `--. \
"  /\__/ / |\  |_| |_| |   | |   | |___  | | /\__/ /
"  \____/\_| \_/\___/\_|   \_|   \____/  \_/ \____/ 

"C
autocmd FileType c
\ iabbrev !@ #include<stdio.h><CR>#include<stdlib.h><CR><CR>int main()<CR>{<CR>P<CR><CR><TAB>return 0;<CR>}<Esc>?P<CR>xi

"CPP
autocmd FileType cpp
\ iabbrev !@ #include<iostream><CR>using namespace std;<CR><CR>int main()<CR>{<CR>P<CR><CR><TAB>return 0;<CR>}<Esc>?P<CR>xi

"Java
autocmd FileType java 
\ iabbrev psvm <TAB>public static void main(String [] args){<TAB>P<CR><TAB>}<CR><Esc>?P<CR>xi 
autocmd FileType java 
\  iabbrev sop System.out.println(P)<Esc>?P<CR>xi
