view: qrtz_locks {
  sql_table_name: public.qrtz_locks ;;

  dimension: lock_name {
    type: string
    sql: ${TABLE}.lock_name ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.sched_name ;;
  }

  measure: count {
    type: count
    drill_fields: [lock_name, sched_name]
  }
}
