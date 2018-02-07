try
    let s:ls = globpath(&rtp, 'node_modules/.bin/css-languageserver', 1)
    let s:ls = split(s:ls, "\n")[0]

    let s:params = { 'css': [s:ls, '--stdio'],
                \ 'less': [s:ls, '--stdio'],
                \ 'sass': [s:ls, '--stdio']
                \}

    call extend(g:LanguageClient_serverCommands, s:params)

    let s:sources_override = {
                \ 'cm-css': { 'enable', 0 },
                \ 'LanguageClient_css': {'word_pattern': '[\w\-]+', 'scoping': 1, 'cm_refresh_patterns':['[\w\-]+\s*:\s+'] },
                \ 'LanguageClient_less': {'word_pattern': '[\w\-]+', 'scoping': 1, 'cm_refresh_patterns':['[\w\-]+\s*:\s+'] },
                \ 'LanguageClient_sass': {'word_pattern': '[\w\-]+', 'scoping': 1, 'cm_refresh_patterns':['[\w\-]+\s*:\s+'] }
                \}

    call extend(g:cm_sources_override, s:sources_override)

catch
    " do nothing
endtry
