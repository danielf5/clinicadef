# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131126183057) do

  create_table "especialidads", :force => true do |t|
    t.text     "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "medicos", :force => true do |t|
    t.integer  "identificacion"
    t.string   "nombres"
    t.text     "curriculum"
    t.string   "email"
    t.integer  "celular"
    t.text     "reconocimientos"
    t.integer  "especialidad_id"
    t.string   "apellidos"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "medicos", ["especialidad_id"], :name => "index_medicos_on_especialidad_id"

end
