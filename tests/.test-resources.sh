testname="$(basename "$(cd .. && pwd)")"

RED=$(tput setaf 1 2>/dev/null)
GREEN=$(tput setaf 2 2>/dev/null)
NORMAL=$(tput sgr0 2>/dev/null)

pass(){
    echo "${GREEN}PASS${NORMAL}"
}

fail(){
    err_message=$1
    echo "${RED}FAIL${NORMAL} - $testname: $err_message"
}

compare_files(){
    expected=$1
    actual=$2

    if cmp --silent "$expected" "$actual"; then
        pass
    else
        fail "$actual did not match $expected"
        diff --side-by-side "$expected" "$actual"
    fi
}

compare_stdout(){
    compare_files exp-stdout act-stdout
}

compare_stderr(){
    compare_files exp-stderr act-stderr
}

compare_changelog(){
    compare_files CHANGELOG-exp.md CHANGELOG.md
}

compare_tags(){
    compare_files exp-tags act-tags
}

gen_changelog_exp(){
    date=$(date +%Y-%m-%d)
    sed "s/~~SUB-DATE~~/$date/" CHANGELOG-template.md > CHANGELOG-exp.md
}

no_changelog(){
    if [ ! -e CHANGELOG.md ]; then
        pass
    else
        fail "created changelog"
    fi
}

empty_changelog(){
    if [ ! "$(cat CHANGELOG.md)" ]; then
        pass
    else
        fail "addeed to changelog"
    fi
}

check_auth_file(){
    if [ -f change/auth ] && [ "$(base64 --decode -i change/auth)" = 1234 ] ; then
        pass
    else
        fail "invalid auth file"
    fi
}
