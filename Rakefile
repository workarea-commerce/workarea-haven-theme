begin
  require "bundler/setup"
rescue LoadError
  puts "You must `gem install bundler` and `bundle install` to run rake tasks"
end

require "rdoc/task"
RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = "rdoc"
  rdoc.title    = "Haven Theme"
  rdoc.options << "--line-numbers"
  rdoc.rdoc_files.include("README.md")
  rdoc.rdoc_files.include("lib/**/*.rb")
end

APP_RAKEFILE = File.expand_path("../test/dummy/Rakefile", __FILE__)
load "rails/tasks/engine.rake"
load "rails/tasks/statistics.rake"

require "rake/testtask"
Rake::TestTask.new(:test) do |t|
  t.libs << "lib"
  t.libs << "test"
  t.pattern = "test/**/*_test.rb"
  t.verbose = false
end
task default: :test

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "workarea/haven_theme/version"

desc "Generate the changelog based on git history"
task :changelog, :from, :to do |t, args|
  require "date"

  from = args[:from] || `git describe --tags --abbrev=0`.strip
  to = args[:to] || "HEAD"
  log = `git log #{from}..#{to} --pretty=format:'%an|%B___'`

  puts "Workarea Haven Theme #{Workarea::HavenTheme::VERSION} (#{Time.zone.today})"
  puts "-" * 80
  puts

  log.split(/___/).each do |commit|
    pieces = commit.split("|").reverse
    author = pieces.pop.strip
    message = pieces.join.strip

    next if message =~ /^\s*Merge pull request/
    next if message =~ /No changelog/i

    project_key = nil # TODO Replace with your Project's Jira key

    if project_key.blank?
      puts "To clean up your release notes, add your project's Jira key to the Changelog Rake task!"
    else
      ticket = message.scan(/#{project_key}-\d+/)[0]
      next if ticket.nil?
      next if message =~ /^\s*Merge branch/ && ticket.nil?
    end

    first_line = false

    message.each_line do |line|
      if !first_line
        first_line = true
        puts "*   #{line}"
      elsif line.strip.empty?
        puts
      else
        puts "    #{line}"
      end
    end

    puts "    #{author}"
    puts
  end
end

desc "Release version #{Workarea::HavenTheme::VERSION} of the gem"
task :release do
  host = "https://#{ENV['BUNDLE_GEMS__WEBLINC__COM']}@gems.weblinc.com"

  system "touch CHANGELOG.md"
  system 'echo "$(rake changelog)


$(cat CHANGELOG.md)" > CHANGELOG.md'
  system 'git add CHANGELOG.md && git commit -m "Update changelog" && git push origin HEAD'

  system "git tag -a v#{Workarea::HavenTheme::VERSION} -m 'Tagging #{Workarea::HavenTheme::VERSION}'"
  system "git push --tags"

  system "gem build workarea-haven_theme.gemspec"
  system "gem push workarea-haven_theme-#{Workarea::HavenTheme::VERSION}.gem --host #{host}"
  system "rm workarea-haven_theme-#{Workarea::HavenTheme::VERSION}.gem"
end

desc "Run the JavaScript tests"
ENV["TEASPOON_RAILS_ENV"] = File.expand_path("../test/dummy/config/environment", __FILE__)
task teaspoon: "app:teaspoon"

desc "Start a server at http://localhost:3000/teaspoon for JavaScript tests"
task :teaspoon_server do
  Dir.chdir("test/dummy")
  teaspoon_env = File.expand_path("../test/teaspoon_env.rb", __FILE__)
  system "RAILS_ENV=test TEASPOON_ENV=#{teaspoon_env} rails s"
end
