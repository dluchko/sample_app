# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# SampleApp::Application.config.secret_key_base = 'b9b76df18dcadcc577a29a0b129610c3f8a69a646283e15ed61ad7434b3d23d6039fc4c1b58b90d343a01a0bfb91612fbc1b0791668421ade2798a989387489d'

require 'securerandom'

def secure_token
	token_file =Rails.root.join('.secret')
	if File.exist?(token_file)
		File.read(token_file).chomp
	else
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end

SampleApp::Application.config.secret_key_base = secure_token
