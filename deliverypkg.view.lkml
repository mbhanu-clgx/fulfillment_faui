view: deliverypkg {
  sql_table_name: public.deliverypkg ;;

  dimension: addedbyuser {
    type: string
    sql: ${TABLE}.addedbyuser ;;
  }

  dimension: codetables {
    type: string
    sql: ${TABLE}.codetables ;;
  }

  dimension: datadictionary {
    type: string
    sql: ${TABLE}.datadictionary ;;
  }

  dimension: echoletterinclusion {
    type: string
    sql: ${TABLE}.echoletterinclusion ;;
  }

  dimension: faqinclusion {
    type: string
    sql: ${TABLE}.faqinclusion ;;
  }

  dimension: fielddef {
    type: string
    sql: ${TABLE}.fielddef ;;
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

  dimension: pdfconversion {
    type: string
    sql: ${TABLE}.pdfconversion ;;
  }

  dimension: populationcount {
    type: string
    sql: ${TABLE}.populationcount ;;
  }

  dimension: samplerecords {
    type: string
    sql: ${TABLE}.samplerecords ;;
  }

  dimension: tableprofile {
    type: string
    sql: ${TABLE}.tableprofile ;;
  }

  dimension: tokenfile {
    type: string
    sql: ${TABLE}.tokenfile ;;
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
    drill_fields: []
  }
}
