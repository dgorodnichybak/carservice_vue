class UiController < ApplicationController
  def index
    render html:
      '<!DOCTYPE html>'\
      '<html lang="en">'\
        '<head>'\
          '<meta charset="utf-8" />'\
          '<meta name="viewport" content="width=device-width" />'\
          '<title>CarService</title>'\
          '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">'\
          "#{ActionController::Base.helpers.javascript_pack_tag 'application'}"\
          "#{ActionController::Base.helpers.stylesheet_pack_tag 'application'}"\
        '</head>'\
        '<body>'\
          '<div id="app"></div>'\
        '</body>'\
      '</html>'.html_safe
  end
end
