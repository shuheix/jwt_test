# frozen_string_literal: true
require 'jwt'

payload = {
  sub: "uuid",
  iat: 12345
}

secret = 'my$ecretK3y'

token = JWT.encode(payload, secret, 'HS256')
puts token
# eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1dWlkIiwiaWF0IjoxMjM0NX0.LzZnI2Uj1mBGCKCPPwQX6CNRTXMlo-Et9AFVni0J_A8

decode, alg = JWT.decode(token, secret, true, { algorithm: 'HS256' })

puts decode
puts alg
# {"sub"=>"uuid", "iat"=>12345}


