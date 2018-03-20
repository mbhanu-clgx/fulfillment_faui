view: job_aud {
  sql_table_name: public.job_aud ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: added_by_user {
    type: string
    sql: ${TABLE}.added_by_user ;;
  }

  dimension: business_unit_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_unit_id ;;
  }

  dimension: compression_type {
    type: string
    sql: ${TABLE}.compression_type ;;
  }

  dimension: cron_schedule {
    type: string
    sql: ${TABLE}.cron_schedule ;;
  }

  dimension: deed_category_type_filter {
    type: string
    sql: ${TABLE}.deed_category_type_filter ;;
  }

  dimension_group: deleted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: delimiter_type {
    type: string
    sql: ${TABLE}.delimiter_type ;;
  }

  dimension: extract_delivery_type {
    type: string
    sql: ${TABLE}.extract_delivery_type ;;
  }

  dimension: extract_type {
    type: string
    sql: ${TABLE}.extract_type ;;
  }

  dimension: file_format_type {
    type: string
    sql: ${TABLE}.file_format_type ;;
  }

  dimension: fips_code_filter {
    type: string
    sql: ${TABLE}.fips_code_filter ;;
  }

  dimension: ftp_host {
    type: string
    sql: ${TABLE}.ftp_host ;;
  }

  dimension: ftp_password {
    type: string
    sql: ${TABLE}.ftp_password ;;
  }

  dimension: ftp_port {
    type: number
    sql: ${TABLE}.ftp_port ;;
  }

  dimension: ftp_user {
    type: string
    sql: ${TABLE}.ftp_user ;;
  }

  dimension: fulfillment_request_number {
    type: string
    sql: ${TABLE}.fulfillment_request_number ;;
  }

  dimension: header_row_inclusion {
    type: yesno
    sql: ${TABLE}.header_row_inclusion ;;
  }

  dimension_group: insert_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.insert_dt ;;
  }

  dimension: land_use_code_filter {
    type: string
    sql: ${TABLE}.land_use_code_filter ;;
  }

  dimension: mortgage_cascade_date_filter {
    type: string
    sql: ${TABLE}.mortgage_cascade_date_filter ;;
  }

  dimension: nationwide_filter {
    type: string
    sql: ${TABLE}.nationwide_filter ;;
  }

  dimension: opportunity_number {
    type: string
    sql: ${TABLE}.opportunity_number ;;
  }

  dimension: order_name {
    type: string
    sql: ${TABLE}.order_name ;;
  }

  dimension: package_delivery_notification_emails {
    type: string
    sql: ${TABLE}.package_delivery_notification_emails ;;
  }

  dimension: pending_record_indicator_filter {
    type: string
    sql: ${TABLE}.pending_record_indicator_filter ;;
  }

  dimension: primary_category_code_filter {
    type: string
    sql: ${TABLE}.primary_category_code_filter ;;
  }

  dimension: recording_date_filter {
    type: string
    sql: ${TABLE}.recording_date_filter ;;
  }

  dimension: rev {
    type: number
    sql: ${TABLE}.rev ;;
  }

  dimension: revtype {
    type: number
    sql: ${TABLE}.revtype ;;
  }

  dimension: sale_position_filter {
    type: string
    sql: ${TABLE}.sale_position_filter ;;
  }

  dimension: sales_date_filter {
    type: string
    sql: ${TABLE}.sales_date_filter ;;
  }

  dimension_group: schedule_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.schedule_date_time ;;
  }

  dimension: situs_zip_code_filter {
    type: string
    sql: ${TABLE}.situs_zip_code_filter ;;
  }

  dimension: split_by {
    type: string
    sql: ${TABLE}.split_by ;;
  }

  dimension: text_qualifier {
    type: yesno
    sql: ${TABLE}.text_qualifier ;;
  }

  dimension: transaction_batch_date_filter {
    type: string
    sql: ${TABLE}.transaction_batch_date_filter ;;
  }

  dimension: transaction_cascade_date_filter {
    type: string
    sql: ${TABLE}.transaction_cascade_date_filter ;;
  }

  dimension: transaction_type_filter {
    type: string
    sql: ${TABLE}.transaction_type_filter ;;
  }

  dimension_group: update_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.update_dt ;;
  }

  dimension: use_case_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.use_case_id ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.workflow_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      order_name,
      business_unit.contact_name,
      business_unit.id,
      use_case.name,
      use_case.id
    ]
  }
}
