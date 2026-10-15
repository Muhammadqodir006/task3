require 'sinatra'

set :bind, '0.0.0.0'
set :port, ENV.fetch('PORT', 4567)

EMAIL = 'muhammadqodirsodiqov99@gmail.com'
PATH  = '/' + EMAIL.gsub(/[^a-zA-Z0-9]/, '_')

get PATH do
  content_type 'text/plain'
  x = params['x'].to_s
  y = params['y'].to_s

  if x.match?(/\A[0-9]+\z/) && y.match?(/\A[0-9]+\z/)
    x.to_i.lcm(y.to_i).to_s
  else
    'NaN'
  end
end