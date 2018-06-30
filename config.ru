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
      footer {
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        padding: 1rem;
        font-size: 1rem;
        text-align: left;
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
      <footer><a href="https://github.com/pocke/shouldnot.work">https://github.com/pocke/shouldnot.work</a></footer>
    </body>
  HTML
end

run Sinatra::Application
