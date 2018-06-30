require 'bundler'
Bundler.require

get '/' do
  <<~HTML
    <style>
      body {
        text-align: center;
        display: table;
        width: 100%;
        height: 100%;
        margin: 0;
      }
      h1 {
        font-size: 5rem;
        display: table-cell;
        vertical-align: middle;
      }
    </style>
    <body>
      <h1>
        #{
          [
            '働いたら負け',
            'YOU SHOULD NOT WORK!',
            '労働は悪',
          ].sample
        }
      </h1>
    </body>
  HTML
end

run Sinatra::Application
