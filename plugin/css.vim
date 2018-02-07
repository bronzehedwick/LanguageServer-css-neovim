try
    let s:ls = globpath(&rtp, 'node_modules/.bin/css-languageserver', 1)
    let s:ls = split(s:ls, "\n")[0]

    let s:params = { 'css': [s:ls, '--stdio'],
                \ 'less': [s:ls, '--stdio'],
                \ 'sass': [s:ls, '--stdio']
                \}

    call extend(g:LanguageClient_serverCommands, s:params)

    let s:cm_params = {'word_pattern': '[\w\-]+',
                \ 'cm_refresh_patterns':['[\w\-]+\s*:\s+'],
                \ }

    let s:sources_override = {
                \ 'cm-css': { 'enable', 0 },
                \ 'LanguageClient_css': s:cm_params,
                \ 'LanguageClient_less': s:cm_params,
                \ 'LanguageClient_sass': s:cm_params,
                \}

    call extend(g:cm_sources_override, s:sources_override)

catch
    " do nothing
endtry
