require 'application'
require 'minitest/spec'
require 'minitest/autorun'

describe Application do
  describe "#rakefile" do
    it "throws error if rakefile not present" do
      lambda {
        no_rake_file_prj_dir = File.join(File.dirname(File.expand_path(__FILE__)), 'no_rake_file')
        Application.new no_rake_file_prj_dir
      }.must_raise RuntimeError
    end
  end
end
