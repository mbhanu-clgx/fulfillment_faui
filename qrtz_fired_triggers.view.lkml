view: qrtz_fired_triggers {
  sql_table_name: public.qrtz_fired_triggers ;;

  dimension: entry_id {
    type: string
    sql: ${TABLE}.entry_id ;;
  }

  dimension: fired_time {
    type: number
    sql: ${TABLE}.fired_time ;;
  }

  dimension: instance_name {
    type: string
    sql: ${TABLE}.instance_name ;;
  }

  dimension: is_nonconcurrent {
    type: yesno
    sql: ${TABLE}.is_nonconcurrent ;;
  }

  dimension: job_group {
    type: string
    sql: ${TABLE}.job_group ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.job_name ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: requests_recovery {
    type: yesno
    sql: ${TABLE}.requests_recovery ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.sched_name ;;
  }

  dimension: sched_time {
    type: number
    sql: ${TABLE}.sched_time ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
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
    drill_fields: [sched_name, job_name, instance_name, trigger_name]
  }
}
