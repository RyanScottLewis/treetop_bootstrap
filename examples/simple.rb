require_relative '../lib/treetop_bootstrap'


body = TreetopBootstrap.parse(DATA.read)

puts '', '----- body -----------------------------------------------------------------------', ''
p body

puts '', '----- result ---------------------------------------------------------------------', ''
body.run

puts '', '----------------------------------------------------------------------------------', ''

__END__
hello 'world'
hello "Ryan"

hello 12



hello 1.2
