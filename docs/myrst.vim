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

function! RstStoryFindElaboration()
    " find story elaboration section - START + END
    let processing_elaboration = 0
    let dictionary = {} let curr_story = "" for i in range(line("$"))
        let line = getline(i)
        if match(line, "^.. STORY_ELABORATION$") != -1
            let start_line_no = i
            let processing_elaboration = 1
            continue
        elseif match(line, "^.. END_STORY_ELABORATION$") != -1
            let end_line_no = i
            let processing_elaboration = 0
            break
        endif
        if processing_elaboration == 1
            if match(line, '.. rubric:: As a\/[^\/]*$') != -1
                let curr_story = substitute(line, '^.. rubric:: \(.*\)$', '\1', '')
                let dictionary[curr_story] = []
            elseif curr_story != ""
                call add(dictionary[curr_story], line)
            endif
        endif
    endfor
    return dictionary
endfunction

function! RstStoryElaborate()
    let stories = RstFindUserStoryTable()
    let elaboration_lines = RstStoryFindElaboration()
    for item in items(elaboration_lines)
        echo '..rubric:: '.item[0]
        echo join(item[1], "\n")
        echo "\n"
    endfor
    for story in stories
        echo story
    endfor
    
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

function! RstUpdateUserStory()
    let cur_line = line('.')
    let new_text = RstParseUserStory(getline(cur_line))
    call setline(cur_line, new_text)
endfunction

map <C-R>c :w<CR>:call RstUpdateUserStory()<CR>

map <F5> :w<CR>:so myrst.vim<CR>:call RstParseUserStories()<CR>
"map <F6> :w<CR>:so myrst.vim<CR>:echo join(RstFindUserStoryTable(), "\n")<CR>
map <F6> :w<CR>:so myrst.vim<CR>:call RstStoryElaborate()<CR>
map <C-R>s :call RstParseUserStories()<CR>
