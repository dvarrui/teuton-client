# frozen_string_literal: true

require_relative 'utils'

namespace :install do
  desc 'Check installation'
  task :check do
    Utils.check_gems Utils.gems
    Utils.run_tests
  end

  desc 'Developer installation'
  task :devel do
    Utils.install_gems Utils.gems
    Utils.create_symbolic_link
  end
end
