view: qrtz_job_details {
  sql_table_name: public.qrtz_job_details ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: is_durable {
    type: yesno
    sql: ${TABLE}.is_durable ;;
  }

  dimension: is_nonconcurrent {
    type: yesno
    sql: ${TABLE}.is_nonconcurrent ;;
  }

  dimension: is_update_data {
    type: yesno
    sql: ${TABLE}.is_update_data ;;
  }

  dimension: job_class_name {
    type: string
    sql: ${TABLE}.job_class_name ;;
  }

  dimension: job_data {
    type: string
    sql: ${TABLE}.job_data ;;
  }

  dimension: job_group {
    type: string
    sql: ${TABLE}.job_group ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.job_name ;;
  }

  dimension: requests_recovery {
    type: yesno
    sql: ${TABLE}.requests_recovery ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.sched_name ;;
  }

  measure: count {
    type: count
    drill_fields: [job_name, sched_name, job_class_name]
  }
}
