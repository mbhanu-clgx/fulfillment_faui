view: qrtz_paused_trigger_grps {
  sql_table_name: public.qrtz_paused_trigger_grps ;;

  dimension: sched_name {
    type: string
    sql: ${TABLE}.sched_name ;;
  }

  dimension: trigger_group {
    type: string
    sql: ${TABLE}.trigger_group ;;
  }

  measure: count {
    type: count
    drill_fields: [sched_name]
  }
}
