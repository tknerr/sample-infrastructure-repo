name "local"
description "the local vagrant/virtualbox environment"

default_attributes({
  "sample_app" => {
    "words_of_wisdom" => "running locally on virtualbox!"
  }	
})