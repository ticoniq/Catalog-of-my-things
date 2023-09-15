require_relative 'book/addbook'
require_relative 'book/displaybook'
require_relative 'book/displaylabel'
require_relative 'book/load_book_label'
require_relative 'book/preservedata'
require_relative 'music/addmusic'
require_relative 'music/displaymusic'
require_relative 'music/displaygenre'
require_relative 'music/storage'
require_relative 'game/addgame'
require_relative 'game/displaygame'
require_relative 'game/displayauthor'
require_relative 'game/preservegameauthor'
require_relative 'game/load_game_author'

module Modules
  include AddBook
  include DisplayBook
  include DisplayLabel
  include PreserveData
  include LoadData
  include AddMusic
  include DisplayMusic
  include DisplayGenres
  include Storage
  include AddGame
  include DisplayGame
  include DisplayAuthor
  include PreserveGameAuthor
  include LoadGameAuthor

  def save_collections
    save_book
    save_label
    save_music
    save_games
    save_author
  end

  def load_collections
    load_labels
    load_books
    load_genres
    load_music_albums
    load_authors
    load_games
  end
end
