class UiController < ApplicationController
  def index
    render html:
      '<!DOCTYPE html>'\
      '<html lang="en">'\
        '<head>'\
          '<meta charset="utf-8" />'\
          '<meta name="viewport" content="width=device-width" />'\
          '<title>CarService</title>'\
          '<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>'\
          '<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>'\
          '<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>'\
          '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">'\
          '<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">' \
          "#{ActionController::Base.helpers.javascript_pack_tag 'application'}"\
          "#{ActionController::Base.helpers.stylesheet_pack_tag 'application'}"\
        '</head>'\
        '<body>'\
          '<div id="app"></div>'\
        '</body>'\
      '</html>'.html_safe
  end
end
