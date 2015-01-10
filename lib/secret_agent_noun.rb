require 'yaml'

module SecretAgentNoun
  class << self
    def agent_noun(verb)
      lookup[normalize(verb)]
    end

    def verb(agent_noun)
      inverse_lookup[normalize(agent_noun)]
    end

    private

    def yaml_file
      File.expand_path('../../db/verbs_to_agent_nouns.yml', __FILE__)
    end

    def lookup
      @lookup ||= YAML.load_file(yaml_file)
    end

    def inverse_lookup
      @inverse_lookup ||= lookup.invert
    end

    def normalize(input)
      input.to_s.downcase
    end
  end
end
