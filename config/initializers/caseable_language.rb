require 'tilt/template'
module Tilt
  class CaseableTemplate < Template
    def prepare
    end

    def evaluate(scope, locals, &block)
      data.gsub(/(\s)case([;\s])/, '\1casevar\2').gsub(/when/, "case")
    end
  end
end

Rails.application.assets.register_engine '.caseable', Tilt::CaseableTemplate
