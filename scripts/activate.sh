<<comment
# Help
# Objective of this exercise is to test setup environment ...
#     plus, start a Web Server
# The hash # is a comment or action ...
#     # is a comment symbol in a .sh file 
# The dollar $ represents a terminal command ... 
#     $ is not part of command

# Start a terminal for commands
$ mdkir vscode
$ cd vscode
$ git clone https://github.com/nighthawkcoders/student.git
$ ~/vscode/student/scripts/activate.sh

# Run the head command, leave this terminal open ...
#    the head command shows remaining instructions  ...
#    find this spot and continue on
$ head -30 ~/vscode/student/scripts/activate.sh

# Start a new terminal ...
#    the "new" terminal is the command terminal ...
#    the "original" terminal shows commands ...
#    type commands in "new" terminal
$ cd ~/vscode/student
$ bundle install
$ bundle exec jekyll serve

# End
# The build execution is complete ...
#     Ctl-Click on "link" in terminal ...
#     observe web site in the opened browser
comment

# Function to check if a line exists in run commands
line_exists_in_rc() {
  grep -Fxq "$1" ~/.bashrc
}

# Function to add line to run commands
add_to_rc() {
  if ! line_exists_in_rc "$1"; then
    echo "$1" >> ~/.bashrc
  fi
}

#### Github Pages Local Build support
echo "=== GitHub pages build tools  ==="
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
add_to_rc "# Ruby Gem Path"
add_to_rc 'export GEM_HOME="$HOME/gems"'
add_to_rc 'export PATH="$HOME/gems/bin:$PATH"'

echo "=== Gem install starting, thinking... ==="
gem install jekyll bundler

echo "=== !!!Start a new Terminal!!! ==="

#!/bin/bash

port=4200
repo_name=hanrblog
log_file="/tmp/jekyll${port}.log"
# Exceptions will stop make
shell="/bin/bash"
shellflags="-e"



# Set source and target directories
source_directory="_notebooks"
destination_directory="_posts"

# List all .ipynb files in the source directory
notebook_files=("${source_directory}"/*.ipynb)

# Loop through notebook files and construct target Markdown file names
markdown_files=()
for notebook_file in "${notebook_files[@]}"; do
    # Get the base file name without directory and extension
    base_file_name=$(basename "$notebook_file" .ipynb)
    
    # Construct the target Markdown file path
    markdown_file="${destination_directory}/${base_file_name}.md"
    
    # Add the target file path to the array
    markdown_files+=("$markdown_file")
done

function convert () {
    for notebook_file in "${notebook_files[@]}"; do
        # Get the base file name without directory and extension
        base_file_name=$(basename "$notebook_file" .ipynb)
        
        # Construct the target Markdown file path
        markdown_file="${destination_directory}/${base_file_name}.md"
        
        # Perform the conversion (replace this with your actual conversion command)
        echo "Converting source $notebook_file to destination $markdown_file"
        python -c 'import sys; from scripts.convert_notebooks import convert_single_notebook; convert_single_notebook(sys.argv[1])' "$notebook_file"
    done
}

function stop () {
    echo "Stopping server..."
    lsof -ti :$port | xargs kill >/dev/null 2>&1 || true
    echo "Stopping logging process..."
    ps aux | awk -v log_file=$log_file '$$0 ~ "tail -f " log_file { print $$2 }' | xargs kill >/dev/null 2>&1 || true
    rm -f $log_file
}

function server () {
    stop
    convert
    echo "Starting server..."
    bundle exec jekyll serve
}

server