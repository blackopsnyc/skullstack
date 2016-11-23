namespace :skullstack do
  desc "Copy over sample application layout and scss files."
  task :init do
    Rake::Task["skullstack:layout"].invoke
    Rake::Task["skullstack:stylesheet"].invoke
  end

  desc "Copy over sample application layout files."
  task :layout do
    # Application Layout
    source = File.join(Gem.loaded_specs["skullstack"].full_gem_path, "app", "views", "layouts", "application.html.erb")
    target = File.join(Rails.root, "app", "views", "layouts", "application.html.erb")
    FileUtils.cp_r source, target
  end

  desc "Copy over sample application scss files."
  task :stylesheet do
    # Application Layout
    source = File.join(Gem.loaded_specs["skullstack"].full_gem_path, "app", "assets", "stylesheets", "application.scss")
    target = File.join(Rails.root, "app", "assets", "stylesheets", "application.scss")
    FileUtils.cp_r source, target
  end
end
