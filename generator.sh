mkdir bin
mkdir lib
mkdir spec
mkdir config
touch README.md

# Gemfile
touch Gemfile
echo "source 'http://rubygems.org'" > Gemfile
echo "gem 'rspec'" >> Gemfile

# first Git commit
touch .gitignore
echo 2.0.0-p195 > .ruby-version
git init
git add .
git commit -m "Project structure"