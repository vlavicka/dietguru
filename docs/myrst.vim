" TODO: go through the file, find table with user stories and extract stories
"       into the list
" TODO: go through the file, find user stories elaboration section, look for
"       '.. rubric::' and compare it with list of user stories
"       - if match do nothing
"       - if does not match create new rubric
" TODO: order story elaboration blocks according to user stories in table


let g:table_row = "^+[+-]*+$"
let g:table_row_header = "^+[+=]*+$"
let g:table_row_data = "^|.*|$"

function! RstFindUserStoryTable()
    let lines = line("$")
    let reading_table = 0
    let stories = []
    for i in range(lines)
        let line = getline(i)
        if match(line, g:table_row_header) != -1
            let reading_table = 1
        elseif (match(line, g:table_row_data) != -1) && reading_table == 1
            let data = RstParseUserStory(line)
            call add(stories, data)
        elseif match(line, g:table_row) == -1 && reading_table == 1
            break
        endif
    endfor
    return stories
endfunction

function! RstParseUserStories()
    let line_no = line('.')
    echo 'Current line: '.line_no
    echo 'Last line: '.line('$')
    let curr_line = getline(line_no)
    echo RstParseUserStory(curr_line)
endfunction


function! RstParseUserStory(text)
    let items = []
    for item in split(a:text, '|')[1:]
        let temp = substitute(item, '[ ]*$', '', '')
        let temp = substitute(temp, '^[ ]*', '', '')
        call add(items, temp)
    endfor
    call insert(items, 'As a/an', 0)
    call insert(items, 'I want to', 2)
    call insert(items, 'so that', 4)
    let result = join(items, ' ')
    return result
endfunction

map <F5> :w<CR>:so myrst.vim<CR>:call RstParseUserStories()<CR>
map <F6> :w<CR>:so myrst.vim<CR>:echo join(RstFindUserStoryTable(), "\n")<CR>
map <C-R>s :call RstParseUserStories()<CR>
