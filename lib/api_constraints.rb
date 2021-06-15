# frozen_string_literal: true

# This class is constraints for the api
class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.auth.v#{@version}")
  end
end
