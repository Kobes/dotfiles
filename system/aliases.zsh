# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias flushdns="dscacheutil -flushcache"
alias pyserver='open http://localhost:8000 && python -m SimpleHTTPServer'
alias server="ruby -rwebrick -e'server = WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd);trap \"INT\" do server.shutdown end;server.start'"
