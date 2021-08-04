# Start the CGI program that receives and returns the data
require 'cgi'
cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") {

  get = cgi['input']
  #Return response in HTML
  "<html>
    <body>
      <p>受け取ったundefinedは下記になります</p>
      <p> string：#{get}</p>
    </body>
  </html>"
}
