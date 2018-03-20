view: qrtz_scheduler_state {
  sql_table_name: public.qrtz_scheduler_state ;;

  dimension: checkin_interval {
    type: number
    sql: ${TABLE}.checkin_interval ;;
  }

  dimension: instance_name {
    type: string
    sql: ${TABLE}.instance_name ;;
  }

  dimension: last_checkin_time {
    type: number
    sql: ${TABLE}.last_checkin_time ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.sched_name ;;
  }

  measure: count {
    type: count
    drill_fields: [sched_name, instance_name]
  }
}
