view: fulfillmentoutputparms {
  sql_table_name: public.fulfillmentoutputparms ;;

  dimension: addedbyuser {
    type: string
    sql: ${TABLE}.addedbyuser ;;
  }

  dimension: archivefilename {
    type: string
    sql: ${TABLE}.archivefilename ;;
  }

  dimension: archivefilepath {
    type: string
    sql: ${TABLE}.archivefilepath ;;
  }

  dimension: comppassword {
    type: string
    sql: ${TABLE}.comppassword ;;
  }

  dimension: compression {
    type: string
    sql: ${TABLE}.compression ;;
  }

  dimension: delimiter {
    type: string
    sql: ${TABLE}.delimiter ;;
  }

  dimension: encryption {
    type: string
    sql: ${TABLE}.encryption ;;
  }

  dimension: encryptionkey {
    type: string
    sql: ${TABLE}.encryptionkey ;;
  }

  dimension: extractfilename {
    type: string
    sql: ${TABLE}.extractfilename ;;
  }

  dimension: extractfilepath {
    type: string
    sql: ${TABLE}.extractfilepath ;;
  }

  dimension: fileformat {
    type: string
    sql: ${TABLE}.fileformat ;;
  }

  dimension: fulfillmentpackage {
    type: string
    sql: ${TABLE}.fulfillmentpackage ;;
  }

  dimension: headerind {
    type: string
    sql: ${TABLE}.headerind ;;
  }

  dimension_group: insertdt {
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
    sql: ${TABLE}.insertdt ;;
  }

  dimension: jobid {
    type: number
    value_format_name: id
    sql: ${TABLE}.jobid ;;
  }

  dimension: mailinglistremdupind {
    type: string
    sql: ${TABLE}.mailinglistremdupind ;;
  }

  dimension: splitfileind {
    type: string
    sql: ${TABLE}.splitfileind ;;
  }

  dimension: textqualifier {
    type: string
    sql: ${TABLE}.textqualifier ;;
  }

  dimension_group: updatedt {
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
    sql: ${TABLE}.updatedt ;;
  }

  measure: count {
    type: count
    drill_fields: [archivefilename, extractfilename]
  }
}
