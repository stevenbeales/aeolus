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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_01_032422) do

  create_table "concept", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "concept_id", null: false
    t.string "concept_name", null: false
    t.string "domain_id", limit: 20, null: false
    t.string "vocabulary_id", limit: 20, null: false
    t.string "concept_class_id", limit: 20, null: false
    t.string "standard_concept", limit: 1
    t.string "concept_code", limit: 50, null: false
    t.date "valid_start_date", null: false
    t.date "valid_end_date", null: false
    t.string "invalid_reason", limit: 1
  end

  create_table "standard_case_drug", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "primaryid", limit: 512
    t.string "isr", limit: 512
    t.string "drug_seq", limit: 512
    t.string "role_cod", limit: 512
    t.integer "standard_concept_id"
  end

  create_table "standard_case_indication", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "primaryid", limit: 512
    t.string "isr", limit: 512
    t.string "indi_drug_seq", limit: 512
    t.string "indi_pt", limit: 512
    t.integer "indication_concept_id"
    t.integer "snomed_indication_concept_id"
  end

  create_table "standard_case_outcome", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "primaryid", limit: 512
    t.string "isr", limit: 512
    t.string "pt", limit: 512
    t.integer "outcome_concept_id"
    t.integer "snomed_outcome_concept_id"
  end

  create_table "standard_case_outcome_category", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "primaryid", limit: 512
    t.string "isr", limit: 512
    t.string "outc_code", limit: 512
    t.integer "snomed_concept_id"
  end

  create_table "standard_drug_outcome_contingency_table", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "drug_concept_id"
    t.integer "outcome_concept_id"
    t.bigint "count_a"
    t.decimal "count_b", precision: 10
    t.decimal "count_c", precision: 10
    t.decimal "count_d", precision: 10
  end

  create_table "standard_drug_outcome_count", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "drug_concept_id"
    t.integer "outcome_concept_id"
    t.bigint "drug_outcome_pair_count"
    t.integer "snomed_outcome_concept_id"
  end

  create_table "standard_drug_outcome_drilldown", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "drug_concept_id"
    t.integer "outcome_concept_id"
    t.integer "snomed_outcome_concept_id"
    t.string "primaryid", limit: 512
    t.string "isr", limit: 512
  end

  create_table "standard_drug_outcome_statistics", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "drug_concept_id"
    t.integer "outcome_concept_id"
    t.integer "snomed_outcome_concept_id"
    t.bigint "case_count"
    t.decimal "prr", precision: 20, scale: 5
    t.decimal "prr_95_percent_upper_confidence_limit", precision: 20, scale: 5
    t.decimal "prr_95_percent_lower_confidence_limit", precision: 20, scale: 5
    t.decimal "ror", precision: 20, scale: 5
    t.decimal "ror_95_percent_upper_confidence_limit", precision: 20, scale: 5
    t.decimal "ror_95_percent_lower_confidence_limit", precision: 20, scale: 5
  end

  create_table "standard_unique_all_case", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "caseid", limit: 512
    t.string "primaryid", limit: 512
    t.string "isr", limit: 512
  end

  create_table "vocabulary", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "vocabulary_id", limit: 20, null: false
    t.string "vocabulary_name", null: false
    t.string "vocabulary_reference"
    t.string "vocabulary_version"
    t.integer "vocabulary_concept_id", null: false
  end

end
