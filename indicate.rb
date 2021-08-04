# Start the CGI program that receives and returns the data
require 'cgi'
cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") {

  get = cgi['inp']
  #Return response in HTML
  "<html>
    <body>
      <p>La taille de la courge amère et les informations de la personne qui l'a vendue sont les suivantes</p>
      #{get}
    </body>
  </html>"
}
