use Rack::Static, 
  :urls => ["/stylesheets", "/images", "/scripts", "/papers.html", "/consortium.html", "/programme.html", "/sponsors.html", "/registration.html", "/info.html", "LaTiCE_Conference.pdf", "LaTiCE_DC_ver2.pdf"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}