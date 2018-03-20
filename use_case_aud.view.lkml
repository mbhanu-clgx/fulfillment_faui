view: use_case_aud {
  sql_table_name: public.use_case_aud ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alpine_value {
    type: string
    sql: ${TABLE}.alpine_value ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rev {
    type: number
    sql: ${TABLE}.rev ;;
  }

  dimension: revtype {
    type: number
    sql: ${TABLE}.revtype ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
