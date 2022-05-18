class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @last_version_in_db = Version.last
    @check = SearchVersion.new
    @compare = @check.check_new_version_ruby
    insert_db(@compare) if @compare[0] != @last_version_in_db.num_version
    @versions = Version.all
  end

  def insert_db(array)
    Version.create(num_version: array[0], date_version: array[1])
  end
end
