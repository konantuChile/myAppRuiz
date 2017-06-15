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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "analista", primary_key: "idanalista", force: :cascade do |t|
    t.integer "idempleado"
    t.integer "idencargado"
    t.integer "cantidadmaxanalisis"
    t.date    "fechaingresoanalista"
  end

  add_index "analista", ["idanalista"], name: "analista_pk", unique: true, using: :btree
  add_index "analista", ["idempleado"], name: "esanalista_fk", using: :btree
  add_index "analista", ["idencargado"], name: "tieneacargo_fk", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "title",    limit: 50
    t.text     "body"
    t.datetime "created"
    t.datetime "modified"
  end

  create_table "aval", primary_key: "idaval", force: :cascade do |t|
    t.text    "rutempresa"
    t.decimal "montomaxgarantia"
    t.date    "fechaingresoaval"
  end

  add_index "aval", ["idaval"], name: "aval_pk", unique: true, using: :btree
  add_index "aval", ["rutempresa"], name: "esaval_fk", using: :btree

  create_table "avalesencertificadoriesgo", primary_key: "idavalesencertificados", force: :cascade do |t|
    t.text "idaval",           null: false
    t.date "fechahoraingreso"
  end

  add_index "avalesencertificadoriesgo", ["idaval"], name: "contieneavales_fk", using: :btree
  add_index "avalesencertificadoriesgo", ["idavalesencertificados"], name: "avalesencertificadoriesgo_pk", unique: true, using: :btree

  create_table "certificadoriesgo", primary_key: "foliocertificadoriesgo", force: :cascade do |t|
    t.string  "idcliente",              limit: 11
    t.string  "idtipomoneda",           limit: 2
    t.integer "idanalista",                                                null: false
    t.integer "idencargado"
    t.date    "fechacertificadoriesgo"
    t.decimal "montoaprobado",                     precision: 8, scale: 2
  end

  add_index "certificadoriesgo", ["foliocertificadoriesgo"], name: "certificadoriesgo_pk", unique: true, using: :btree
  add_index "certificadoriesgo", ["idanalista"], name: "emite_fk", using: :btree
  add_index "certificadoriesgo", ["idcliente"], name: "obtienen_fk", using: :btree
  add_index "certificadoriesgo", ["idencargado"], name: "autoriza_fk", using: :btree
  add_index "certificadoriesgo", ["idtipomoneda"], name: "tienetipomoneda3_fk", using: :btree

  create_table "cliente", primary_key: "idcliente", force: :cascade do |t|
    t.string  "idestadocliente",     limit: 5
    t.string  "idtipomoneda",        limit: 2, null: false
    t.text    "rutempresa"
    t.decimal "lineacredito"
    t.date    "fechaingresocliente"
  end

  add_index "cliente", ["idcliente"], name: "cliente_pk", unique: true, using: :btree
  add_index "cliente", ["idestadocliente"], name: "tieneestado_fk", using: :btree
  add_index "cliente", ["idtipomoneda"], name: "tienetipomoneda_fk", using: :btree
  add_index "cliente", ["rutempresa"], name: "escliente_fk", using: :btree

  create_table "contienen", id: false, force: :cascade do |t|
    t.decimal "foliocertificadoriesgo", precision: 8, null: false
    t.integer "idavalesencertificados",               null: false
  end

  add_index "contienen", ["foliocertificadoriesgo", "idavalesencertificados"], name: "contienen_pk", unique: true, using: :btree
  add_index "contienen", ["foliocertificadoriesgo"], name: "contienen_fk", using: :btree
  add_index "contienen", ["idavalesencertificados"], name: "contienen2_fk", using: :btree

  create_table "cuentacontable", primary_key: "idcuentacontable", force: :cascade do |t|
    t.string "idtipocuenta",             limit: 3, null: false
    t.text   "nombrecuentacontable"
    t.date   "fechaingresocuentacontab"
  end

  add_index "cuentacontable", ["idcuentacontable"], name: "cuentacontable_pk", unique: true, using: :btree
  add_index "cuentacontable", ["idtipocuenta"], name: "tienetipocuenta_fk", using: :btree

  create_table "ejecutivo", primary_key: "idejecutivo", force: :cascade do |t|
    t.string  "idcliente",             limit: 11
    t.integer "idempleado"
    t.integer "cantidadmaxclientes"
    t.date    "fechaingresoejecutivo"
  end

  add_index "ejecutivo", ["idcliente"], name: "contacta_fk", using: :btree
  add_index "ejecutivo", ["idejecutivo"], name: "ejecutivo_pk", unique: true, using: :btree
  add_index "ejecutivo", ["idempleado"], name: "esejecutivo_fk", using: :btree

  create_table "empleado", primary_key: "idempleado", force: :cascade do |t|
    t.text "nombreempleado"
    t.text "apellidopaternoempleado"
    t.text "apellidomaternoempleado"
    t.text "emailempleado"
    t.date "fechaingresoinformcontables"
  end

  add_index "empleado", ["idempleado"], name: "empleado_pk", unique: true, using: :btree

  create_table "empresa", primary_key: "rutempresa", force: :cascade do |t|
    t.string "idtamanoempresa",     limit: 5, null: false
    t.text   "nombreempresa"
    t.text   "direccionempresa"
    t.text   "comunaempresa"
    t.text   "telefonoempresa"
    t.text   "emailempresa"
    t.text   "nombrecontacto"
    t.date   "fechaingresoempresa"
  end

  add_index "empresa", ["idtamanoempresa"], name: "tienetamano_fk", using: :btree
  add_index "empresa", ["rutempresa"], name: "empresa_pk", unique: true, using: :btree

  create_table "estadocliente", primary_key: "idestadocliente", force: :cascade do |t|
    t.text "nombreestadocliente"
    t.date "fechaingresoestadoclie"
  end

  add_index "estadocliente", ["idestadocliente"], name: "estadocliente_pk", unique: true, using: :btree

  create_table "estadoproceso", primary_key: "idestadoproceso", force: :cascade do |t|
    t.text "nombreestadoproceso"
    t.date "fechaingresoestado"
  end

  add_index "estadoproceso", ["idestadoproceso"], name: "estadoproceso_pk", unique: true, using: :btree

  create_table "estudioriesgo", primary_key: "idestudioriesgo", force: :cascade do |t|
    t.integer "idestadoproceso"
    t.integer "idanalista"
    t.date    "fechainicioestudioriesgo"
    t.date    "fechaterminoestudioriesgo"
    t.text    "observacionestudio"
  end

  add_index "estudioriesgo", ["idanalista"], name: "realiza_fk", using: :btree
  add_index "estudioriesgo", ["idestadoproceso"], name: "tieneestadopro1_fk", using: :btree
  add_index "estudioriesgo", ["idestudioriesgo"], name: "estudioriesgo_pk", unique: true, using: :btree

  create_table "informacioncomercial", primary_key: "idinforcomercial", force: :cascade do |t|
    t.string  "idtipomoneda",           limit: 2,                         null: false
    t.integer "correlativoinformacion"
    t.date    "fechainforcomercial"
    t.decimal "montoinforcomercial",              precision: 8, scale: 2
    t.date    "fechahoraingreso"
  end

  add_index "informacioncomercial", ["correlativoinformacion"], name: "tieneinforcomercial_fk", using: :btree
  add_index "informacioncomercial", ["idinforcomercial"], name: "informacioncomercial_pk", unique: true, using: :btree
  add_index "informacioncomercial", ["idtipomoneda"], name: "tienetipomoneda5_fk", using: :btree

  create_table "informacioncomercialcliente", primary_key: "correlativoinformacion", force: :cascade do |t|
    t.string  "idcliente",                     limit: 11
    t.integer "idestudioriesgo"
    t.integer "idnivelriesgo",                            null: false
    t.decimal "resultadoinforcomercial"
    t.decimal "resultadoinforcontable"
    t.date    "fechafincompromisoinformacion"
    t.date    "fechaingresoinfcomercial"
  end

  add_index "informacioncomercialcliente", ["correlativoinformacion"], name: "informacioncomercialcliente_pk", unique: true, using: :btree
  add_index "informacioncomercialcliente", ["idcliente"], name: "tiene_fk", using: :btree
  add_index "informacioncomercialcliente", ["idestudioriesgo"], name: "obtiene_fk", using: :btree
  add_index "informacioncomercialcliente", ["idnivelriesgo"], name: "tienenivelriesgo_fk", using: :btree

  create_table "informacioncontable", primary_key: "idinforcontable", force: :cascade do |t|
    t.integer "correlativoinformacion"
    t.string  "idtipomoneda",                limit: 2, null: false
    t.text    "idcuentacontable",                      null: false
    t.decimal "montoinforcontable"
    t.text    "periodoinforcontable"
    t.date    "fechaingresoinformcontables"
  end

  add_index "informacioncontable", ["correlativoinformacion"], name: "tieneinforcontable_fk", using: :btree
  add_index "informacioncontable", ["idcuentacontable"], name: "tienecuentacontable_fk", using: :btree
  add_index "informacioncontable", ["idinforcontable"], name: "informacioncontable_pk", unique: true, using: :btree
  add_index "informacioncontable", ["idtipomoneda"], name: "tienetipomoneda2_fk", using: :btree

  create_table "institucionfinanciera", primary_key: "idinstitucionfinanciera", force: :cascade do |t|
    t.decimal "foliocertificadoriesgo",         precision: 8
    t.text    "nombreinstitucionfinanciera"
    t.text    "direccioninstitucionfinanciera"
    t.text    "emailinstitucionfinanciera"
    t.text    "contactoinstitucionfinanciera"
    t.date    "fechaingresoinstfinanciera"
  end

  add_index "institucionfinanciera", ["foliocertificadoriesgo"], name: "contiene_fk", using: :btree
  add_index "institucionfinanciera", ["idinstitucionfinanciera"], name: "institucionfinanciera_pk", unique: true, using: :btree

  create_table "nivelriesgo", primary_key: "idnivelriesgo", force: :cascade do |t|
    t.text "nombrenivelriesgo"
    t.date "fechaingresonivriesgo"
  end

  add_index "nivelriesgo", ["idnivelriesgo"], name: "nivelriesgo_pk", unique: true, using: :btree

  create_table "solicitudinforme", primary_key: "idsolicitud", force: :cascade do |t|
    t.string  "idtipomoneda",     limit: 2,                         null: false
    t.integer "idanalista"
    t.integer "idejecutivo"
    t.integer "idestadoproceso",                                    null: false
    t.date    "fechahoraingreso"
    t.decimal "montosolicitado",            precision: 8, scale: 2
  end

  add_index "solicitudinforme", ["idanalista"], name: "revisa_fk", using: :btree
  add_index "solicitudinforme", ["idejecutivo"], name: "ingresa_fk", using: :btree
  add_index "solicitudinforme", ["idestadoproceso"], name: "tieneestadopro_fk", using: :btree
  add_index "solicitudinforme", ["idsolicitud"], name: "solicitudinforme_pk", unique: true, using: :btree
  add_index "solicitudinforme", ["idtipomoneda"], name: "tienetipomoneda6_fk", using: :btree

  create_table "supervisor", primary_key: "idencargado", force: :cascade do |t|
    t.integer "idempleado"
    t.date    "fechaingresoencargado"
  end

  add_index "supervisor", ["idempleado"], name: "essupervisor_fk", using: :btree
  add_index "supervisor", ["idencargado"], name: "supervisor_pk", unique: true, using: :btree

  create_table "tamanoempresa", primary_key: "idtamanoempresa", force: :cascade do |t|
    t.text "tamanoempresa"
    t.date "fechaingresotamnoemp"
  end

  add_index "tamanoempresa", ["idtamanoempresa"], name: "tamanoempresa_pk", unique: true, using: :btree

  create_table "tieneinstfinanciera", id: false, force: :cascade do |t|
    t.text    "idinstitucionfinanciera", null: false
    t.integer "idinforcomercial",        null: false
  end

  add_index "tieneinstfinanciera", ["idinforcomercial"], name: "tieneinstfinanciera2_fk", using: :btree
  add_index "tieneinstfinanciera", ["idinstitucionfinanciera", "idinforcomercial"], name: "tieneinstfinanciera_pk", unique: true, using: :btree
  add_index "tieneinstfinanciera", ["idinstitucionfinanciera"], name: "tieneinstfinanciera_fk", using: :btree

  create_table "tipocuenta", primary_key: "idtipocuenta", force: :cascade do |t|
    t.text "nombretipocuenta"
    t.date "fechaingresotipocuenta"
  end

  add_index "tipocuenta", ["idtipocuenta"], name: "tipocuenta_pk", unique: true, using: :btree

  create_table "tipomoneda", primary_key: "idtipomoneda", force: :cascade do |t|
    t.text "nombretipomoneda"
    t.date "fechaingresotipomo"
  end

  add_index "tipomoneda", ["idtipomoneda"], name: "tipomoneda_pk", unique: true, using: :btree

  add_foreign_key "analista", "empleado", column: "idempleado", primary_key: "idempleado", name: "fk_analista_esanalist_empleado", on_update: :restrict, on_delete: :restrict
  add_foreign_key "analista", "supervisor", column: "idencargado", primary_key: "idencargado", name: "fk_analista_tieneacar_supervis", on_update: :restrict, on_delete: :restrict
  add_foreign_key "aval", "empresa", column: "rutempresa", primary_key: "rutempresa", name: "fk_aval_esaval_empresa", on_update: :restrict, on_delete: :restrict
  add_foreign_key "avalesencertificadoriesgo", "aval", column: "idaval", primary_key: "idaval", name: "fk_avalesen_contienea_aval", on_update: :restrict, on_delete: :restrict
  add_foreign_key "certificadoriesgo", "analista", column: "idanalista", primary_key: "idanalista", name: "fk_certific_emite_analista", on_update: :restrict, on_delete: :restrict
  add_foreign_key "certificadoriesgo", "cliente", column: "idcliente", primary_key: "idcliente", name: "fk_certific_obtienen_cliente", on_update: :restrict, on_delete: :restrict
  add_foreign_key "certificadoriesgo", "supervisor", column: "idencargado", primary_key: "idencargado", name: "fk_certific_autoriza_supervis", on_update: :restrict, on_delete: :restrict
  add_foreign_key "certificadoriesgo", "tipomoneda", column: "idtipomoneda", primary_key: "idtipomoneda", name: "fk_certific_tienetipo_tipomone", on_update: :restrict, on_delete: :restrict
  add_foreign_key "cliente", "empresa", column: "rutempresa", primary_key: "rutempresa", name: "fk_cliente_escliente_empresa", on_update: :restrict, on_delete: :restrict
  add_foreign_key "cliente", "estadocliente", column: "idestadocliente", primary_key: "idestadocliente", name: "fk_cliente_tieneesta_estadocl", on_update: :restrict, on_delete: :restrict
  add_foreign_key "cliente", "tipomoneda", column: "idtipomoneda", primary_key: "idtipomoneda", name: "fk_cliente_tienetipo_tipomone", on_update: :restrict, on_delete: :restrict
  add_foreign_key "contienen", "avalesencertificadoriesgo", column: "idavalesencertificados", primary_key: "idavalesencertificados", name: "fk_contiene_contienen_avalesen", on_update: :restrict, on_delete: :restrict
  add_foreign_key "contienen", "certificadoriesgo", column: "foliocertificadoriesgo", primary_key: "foliocertificadoriesgo", name: "fk_contiene_contienen_certific", on_update: :restrict, on_delete: :restrict
  add_foreign_key "cuentacontable", "tipocuenta", column: "idtipocuenta", primary_key: "idtipocuenta", name: "fk_cuentaco_tienetipo_tipocuen", on_update: :restrict, on_delete: :restrict
  add_foreign_key "ejecutivo", "cliente", column: "idcliente", primary_key: "idcliente", name: "fk_ejecutiv_contacta_cliente", on_update: :restrict, on_delete: :restrict
  add_foreign_key "ejecutivo", "empleado", column: "idempleado", primary_key: "idempleado", name: "fk_ejecutiv_esejecuti_empleado", on_update: :restrict, on_delete: :restrict
  add_foreign_key "empresa", "tamanoempresa", column: "idtamanoempresa", primary_key: "idtamanoempresa", name: "fk_empresa_tienetama_tamanoem", on_update: :restrict, on_delete: :restrict
  add_foreign_key "estudioriesgo", "analista", column: "idanalista", primary_key: "idanalista", name: "fk_estudior_realiza_analista", on_update: :restrict, on_delete: :restrict
  add_foreign_key "estudioriesgo", "estadoproceso", column: "idestadoproceso", primary_key: "idestadoproceso", name: "fk_estudior_tieneesta_estadopr", on_update: :restrict, on_delete: :restrict
  add_foreign_key "informacioncomercial", "informacioncomercialcliente", column: "correlativoinformacion", primary_key: "correlativoinformacion", name: "fk_informac_tieneinfo_informac", on_update: :restrict, on_delete: :restrict
  add_foreign_key "informacioncomercial", "tipomoneda", column: "idtipomoneda", primary_key: "idtipomoneda", name: "fk_informac_tienetipo_tipomone", on_update: :restrict, on_delete: :restrict
  add_foreign_key "informacioncomercialcliente", "cliente", column: "idcliente", primary_key: "idcliente", name: "fk_informac_tiene_cliente", on_update: :restrict, on_delete: :restrict
  add_foreign_key "informacioncomercialcliente", "estudioriesgo", column: "idestudioriesgo", primary_key: "idestudioriesgo", name: "fk_informac_obtiene_estudior", on_update: :restrict, on_delete: :restrict
  add_foreign_key "informacioncomercialcliente", "nivelriesgo", column: "idnivelriesgo", primary_key: "idnivelriesgo", name: "fk_informac_tienenive_nivelrie", on_update: :restrict, on_delete: :restrict
  add_foreign_key "informacioncontable", "cuentacontable", column: "idcuentacontable", primary_key: "idcuentacontable", name: "fk_informac_tienecuen_cuentaco", on_update: :restrict, on_delete: :restrict
  add_foreign_key "informacioncontable", "informacioncomercialcliente", column: "correlativoinformacion", primary_key: "correlativoinformacion", name: "fk_informac_tieneinfo_informac", on_update: :restrict, on_delete: :restrict
  add_foreign_key "informacioncontable", "tipomoneda", column: "idtipomoneda", primary_key: "idtipomoneda", name: "fk_informac_tienetipo_tipomone", on_update: :restrict, on_delete: :restrict
  add_foreign_key "institucionfinanciera", "certificadoriesgo", column: "foliocertificadoriesgo", primary_key: "foliocertificadoriesgo", name: "fk_instituc_contiene_certific", on_update: :restrict, on_delete: :restrict
  add_foreign_key "solicitudinforme", "analista", column: "idanalista", primary_key: "idanalista", name: "fk_solicitu_revisa_analista", on_update: :restrict, on_delete: :restrict
  add_foreign_key "solicitudinforme", "ejecutivo", column: "idejecutivo", primary_key: "idejecutivo", name: "fk_solicitu_ingresa_ejecutiv", on_update: :restrict, on_delete: :restrict
  add_foreign_key "solicitudinforme", "estadoproceso", column: "idestadoproceso", primary_key: "idestadoproceso", name: "fk_solicitu_tieneesta_estadopr", on_update: :restrict, on_delete: :restrict
  add_foreign_key "solicitudinforme", "tipomoneda", column: "idtipomoneda", primary_key: "idtipomoneda", name: "fk_solicitu_tienetipo_tipomone", on_update: :restrict, on_delete: :restrict
  add_foreign_key "supervisor", "empleado", column: "idempleado", primary_key: "idempleado", name: "fk_supervis_essupervi_empleado", on_update: :restrict, on_delete: :restrict
  add_foreign_key "tieneinstfinanciera", "informacioncomercial", column: "idinforcomercial", primary_key: "idinforcomercial", name: "fk_tieneins_tieneinst_informac", on_update: :restrict, on_delete: :restrict
  add_foreign_key "tieneinstfinanciera", "institucionfinanciera", column: "idinstitucionfinanciera", primary_key: "idinstitucionfinanciera", name: "fk_tieneins_tieneinst_instituc", on_update: :restrict, on_delete: :restrict
end
