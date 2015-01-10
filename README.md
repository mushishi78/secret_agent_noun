# Secret Agent Noun

[![Gem Version](https://badge.fury.io/rb/secret_agent_noun.svg)](http://badge.fury.io/rb/secret_agent_noun)

Verb to agent noun inflector.

## Usage

```ruby
require 'secret_agent_noun'

SecretAgentNoun.agent_noun('build')    # 'builder'
SecretAgentNoun.agent_noun('Civilize') # 'civilizer'
SecretAgentNoun.agent_noun(:massage)   # 'masseuse'

SecretAgentNoun.verb('caller')   # 'call'
SecretAgentNoun.verb('Creator')  # 'create'
SecretAgentNoun.verb(:organizer) # 'organize'
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'secret_agent_noun'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install secret_agent_noun

## Attribution

The words used were taken from [adambom/dictionary](https://github.com/adambom/dictionary), which in turn is from the Webster's Unabridged English Dictionary, found [here](http://www.gutenberg.org/ebooks/29765).

## Contributing

* Corrections and additions very much appreciated!
