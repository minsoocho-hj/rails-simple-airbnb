# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_19_144701) do

  create_table "flats", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "description"
    t.integer "price_per_night"
    t.integer "number_of_guests"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.binary "image"
  end

end

# form에 대한 이해 + 파라미터
# 이미지 필드를 모델에 추후에 추가했다.
# 데이터타입은 바이너리가 맞을까?
# 그리고 유저이미지 url도 받아올 때 어떤 폼을 사용해야하는지.
