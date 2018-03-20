view: qrtz_blob_triggers {
  sql_table_name: public.qrtz_blob_triggers ;;

  dimension: blob_data {
    type: string
    sql: ${TABLE}.blob_data ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.sched_name ;;
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
    drill_fields: [sched_name, trigger_name]
  }
}
