require "csv"

class ImportCsv
  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << row.to_h
    end
    list
  end

  def self.text_data
    list = import("db/csv_data/text_data.csv")

    puts "テキスト教材インポート処理を開始"
    Text.create!(list)
    puts "インポート完了!!"
  end

  def self.movie_data
    list = import("db/csv_data/movie_data.csv")

    puts "動画教材インポート処理を開始"
    Movie.create!(list)
    puts "インポート完了!!"
  end
end
