" TODO: go through the file, find table with user stories and extract stories
"       into the list
" TODO: go through the file, find user stories elaboration section, look for
"       '.. rubric::' and compare it with list of user stories
"       - if match do nothing
"       - if does not match create new rubric
" TODO: order story elaboration blocks according to user stories in table
function! RstParseUserStories()
    let line_no = line('.')
    echo 'Current line: '.line_no
    echo 'Last line: '.line('$')
    let curr_line = getline(line_no)
    for item in split(curr_line, '|')[1:]
        echo substitute('[ ]*$', '', item)
    endfor
endfunction

map <F5> :w<CR>:so myrst.vim<CR>:call RstParseUserStories()<CR>
map <C-R>s :call RstParseUserStories()<CR>
