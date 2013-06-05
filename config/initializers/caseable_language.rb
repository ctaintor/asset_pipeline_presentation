require 'tilt/template'
module Tilt
  class CaseableTemplate < Template
    def prepare
      converted_text = data.gsub(/(\s)case([;\s])/, '\1casevar\2').gsub(/when/, "case")
      @code = "<<#{hash}.chomp\n#{converted_text}\n#{hash}"
    end

    def precompiled_template(locals)
      @code
    end

    def precompiled(locals)
      source, offset = super
      [source, offset + 1]
    end
  end
end

Rails.application.assets.register_engine '.caseable', Tilt::CaseableTemplate
