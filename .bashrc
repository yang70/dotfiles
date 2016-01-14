export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias vim='/usr/local/Cellar/vim'

function serve {
  port="${1:-4000}"
  ruby -r webrick -e "s = WEBrick::HTTPServer.new(:Port => $port, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start"
  }

# added by travis gem
[ -f /Users/yang70/.travis/travis.sh ] && source /Users/yang70/.travis/travis.sh
