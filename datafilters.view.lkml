view: datafilters {
  sql_table_name: public.datafilters ;;

  dimension: addedbyuser {
    type: string
    sql: ${TABLE}.addedbyuser ;;
  }

  dimension: cbsacd {
    type: string
    sql: ${TABLE}.cbsacd ;;
  }

  dimension: cityname {
    type: string
    sql: ${TABLE}.cityname ;;
  }

  dimension: countycd {
    type: string
    sql: ${TABLE}.countycd ;;
  }

  dimension: deedcattype {
    type: string
    sql: ${TABLE}.deedcattype ;;
  }

  dimension: emptyfileind {
    type: string
    sql: ${TABLE}.emptyfileind ;;
  }

  dimension: extracttype {
    type: string
    sql: ${TABLE}.extracttype ;;
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

  dimension: landusecd {
    type: string
    sql: ${TABLE}.landusecd ;;
  }

  dimension: limitrows {
    type: number
    sql: ${TABLE}.limitrows ;;
  }

  dimension: mostcurrsaleflag {
    type: string
    sql: ${TABLE}.mostcurrsaleflag ;;
  }

  dimension: msacd {
    type: string
    sql: ${TABLE}.msacd ;;
  }

  dimension: nationwide {
    type: string
    sql: ${TABLE}.nationwide ;;
  }

  dimension: pendingtrans {
    type: string
    sql: ${TABLE}.pendingtrans ;;
  }

  dimension: primarycatcd {
    type: string
    sql: ${TABLE}.primarycatcd ;;
  }

  dimension: recordingdt {
    type: number
    sql: ${TABLE}.recordingdt ;;
  }

  dimension: saledt {
    type: number
    sql: ${TABLE}.saledt ;;
  }

  dimension: statecode {
    type: string
    sql: ${TABLE}.statecode ;;
  }

  dimension: transbatchdt {
    type: number
    sql: ${TABLE}.transbatchdt ;;
  }

  dimension: transtype {
    type: string
    sql: ${TABLE}.transtype ;;
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

  dimension: usecase {
    type: string
    sql: ${TABLE}.usecase ;;
  }

  dimension: zipcd {
    type: string
    sql: ${TABLE}.zipcd ;;
  }

  measure: count {
    type: count
    drill_fields: [cityname]
  }
}
