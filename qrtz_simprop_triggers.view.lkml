view: qrtz_simprop_triggers {
  sql_table_name: public.qrtz_simprop_triggers ;;

  dimension: bool_prop_1 {
    type: yesno
    sql: ${TABLE}.bool_prop_1 ;;
  }

  dimension: bool_prop_2 {
    type: yesno
    sql: ${TABLE}.bool_prop_2 ;;
  }

  dimension: dec_prop_1 {
    type: number
    sql: ${TABLE}.dec_prop_1 ;;
  }

  dimension: dec_prop_2 {
    type: number
    sql: ${TABLE}.dec_prop_2 ;;
  }

  dimension: int_prop_1 {
    type: number
    sql: ${TABLE}.int_prop_1 ;;
  }

  dimension: int_prop_2 {
    type: number
    sql: ${TABLE}.int_prop_2 ;;
  }

  dimension: long_prop_1 {
    type: number
    sql: ${TABLE}.long_prop_1 ;;
  }

  dimension: long_prop_2 {
    type: number
    sql: ${TABLE}.long_prop_2 ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.sched_name ;;
  }

  dimension: str_prop_1 {
    type: string
    sql: ${TABLE}.str_prop_1 ;;
  }

  dimension: str_prop_2 {
    type: string
    sql: ${TABLE}.str_prop_2 ;;
  }

  dimension: str_prop_3 {
    type: string
    sql: ${TABLE}.str_prop_3 ;;
  }

  dimension: trigger_group {
    type: string
    sql: ${TABLE}.trigger_group ;;
  }

  dimension: trigger_name {
    type: string
    sql: ${TABLE}.trigger_name ;;
  }

  measure: count {
    type: count
    drill_fields: [trigger_name, sched_name]
  }
}
