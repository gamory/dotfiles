# Emulate the Linux tool "touch"
function touch { New-Item -ItemType file $args }
# Docker container commands
function dalpine { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp alpine } # Run a temporary Alpine shell
function dbinwalk { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp docker pull gillis57/binwalk binwalk } # Run Binwalk
function dbuildpack { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp buildpack-deps bash } # Buildpack shell
function dchpl { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp chapel/chapel chpl $args } # Run the Cray Chapel Compiler
function dclojure { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp clojure clojure $args } # Run a Clojure script
function dcurl { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp r.j3ss.co/curl curl $args } # Curl
function ddebian { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp debian } # Run a temporary Debian shell
function delixir { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp elixir elixir $args } # Execute an Elixir script
function derlang { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp erlang erlang escript $args } # Run an Erlang script
function dgo-compile { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp golang go build -v } # Compile a Go script
function dhaskell { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp haskell ghc $args } # Execute a Haskell script
function dhaxe { docker run -it --rm ${PWD}:/usr/src/myapp -w /usr/src/myapp haxe haxe $args } # Run a Haxe script
function dhylang { docker run -it --rm ${PWD}:/usr/src/myapp -w /usr/src/myapp hylang hylang $args } # Run a Hylang script
function dimagemagick { docker run -it --rm ${PWD}:/usr/src/myapp -w /usr/src/myapp r.j3ss.co/imagemagick bash } # Run an imagemagick shell
function djulia { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp julia julia $args } # Execute Julia script
function dlua { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp nickblah/lua lua $args } # Execute a Lua script
function dmysql { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp mysql mysql $args } # Execute a MySQL shell
function dnetcat { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp r.j3ss.co/netcat nc $args } # Run Netcat
function dnmap { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp r.j3ss.co/nmap nmap $args } # Run Nmap
function dnode { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp node node $args } # Execute a Node.JS script
function dopenjdk { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp openjdk javac $args } # Compile a Java script
function dperl { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp perl perl $args } # Execute a Perl (Perl5) script
function dphp { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp php php $args } # Execute a PHP script
function dpsql { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp postgres psql $args} # Execute a PSQL shell
function dpython2 { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp python:2 python $args } # Execute a Python 2 series script
function dpython3 { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp python:3 python $args } # Execute a Python 3 series script
function drbase { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp r-base r-base $args } # Execute an R script
function drakudo { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp rakudo-star perl6 $args } # Execute a Rakudo Star (Perl 6) script
function druby { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp ruby ruby $args } # Execute a Ruby script
function dswift { docker run -it --rm -v ${PWD}:/usr/src/myapp -w /usr/src/myapp swift swift $args } # Execute a Swift script
# Other commands
function mkisofs { &"Z:\old_machine\global_env\mkisofs.exe" $args } # MkISOfs tool
function nano { &"Z:\nano-win_8303_v4.5-103-gb12aeeac\x86_64-w64-mingw32\bin\nano.exe" $args } # Open a file in Nano
function vi { &"C:\Program Files (x86)\Vim\vim81\vim.exe" $args } # Open a file in Vim
function vim { &"C:\Program Files (x86)\Vim\vim81\vim.exe" $args } # Open a file in Vim
function dhelp { 
	echo "-----------------------[ Custom Docker functions ]-----------------------"
	echo "dalpine        - Open a temporary Alpine shell"
	echo "dbinwalk       - Run Binwalk"
	echo "dbuildpack     - Run a buildpack shell in the current folder"
	echo "dchpl          - Run the Cray Chapel compiler"
	echo "dclojure       - Run a Clojure script"
	echo "dcurl          - Run a Curl instance"
	echo "ddebian        - Open a temporary Debian shell"
	echo "delixir        - Run an Elixir script"
	echo "derlang        - Run an Erlang script"
	echo "dgo-compile    - Run a Go compiler in the current folder"
	echo "dhaskell       - Run a Haskell script with GHC"
	echo "dhaxe          - Run a Haxe script"
	echo "dhylang        - Run a Hylang script"
	echo "dimagemagick   - Run an ImageMagick shell"
	echo "djulia         - Run a Julia script"
	echo "dlua           - Run a Lua script"
	echo "dmysql         - Run a MySQL shell instance"
	echo "dnetcat        - Run a Netcat instance"
	echo "dnmap          - Run an instance of Nmap"
	echo "dnode          - Run a Node.JS script"
	echo "dopenjdk       - Compile a Java script"
	echo "dperl          - Run a Perl (Perl5) script"
	echo "dphp           - Run a PHP script"
	echo "dpsql          - Run a PSQL shell"
	echo "dpython2       - Run a Python 2 series script"
	echo "dpython3       - Run a Python 3 series script"
	echo "drbase         - Run an R script"
	echo "drakudo        - Run a Rakudo (Perl 6) script"
	echo "druby          - Run a Ruby script"
	echo "dswift         - Run a Swift script"
	echo "-----------------------[ Other custom functions ]-----------------------"
	echo "mkisofs        - Mkisofs tool (Linux)"
	echo "nano           - Open a file in Nano"
	echo "vim/vi         - Open a file in Vim"
} # Docker help