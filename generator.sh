mkdir lib
mkdir spec
mkdir config
touch README.md
echo "--format doc" > .rspec

# Gemfile
touch Gemfile
echo "source 'https://rubygems.org'" > Gemfile
echo "gem 'rspec'" >> Gemfile

# first Git commit
touch .gitignore
echo 2.0.0-p195 > .ruby-version
git init
git add .
git commit -m "Project structure"


# set up sample rspec file - after making first commit!
echo 'require_relative "../lib/foo"

describe Foo do

  subject { Foo.new }

  before do
  end

  describe "#method_name" do
    it "should do stuff because x" do
    	subject.method_name.should == "value"
    end
  end
end' >> spec/foo_spec.rb

echo 'require "simplecov" 
SimpleCov.start

require_relative "../lib/foo.rb"
' >> spec/spec_helper.rb


mkdir bin
touch bin/go
echo "#!/usr/bin/env ruby" > bin/go
chmod +x bin/go