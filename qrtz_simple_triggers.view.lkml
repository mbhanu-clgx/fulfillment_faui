view: qrtz_simple_triggers {
  sql_table_name: public.qrtz_simple_triggers ;;

  dimension: repeat_count {
    type: number
    sql: ${TABLE}.repeat_count ;;
  }

  dimension: repeat_interval {
    type: number
    sql: ${TABLE}.repeat_interval ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.sched_name ;;
  }

  dimension: times_triggered {
    type: number
    sql: ${TABLE}.times_triggered ;;
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
