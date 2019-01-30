class Message < ActiveRecord::Base
  require "./encrypted_coder"
  serialize :body, EncryptedCoder.new
end