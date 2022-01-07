view: national_trends {
  sql_table_name: `bigquery-public-data.covid19_italy.national_trends`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}.deaths ;;
  }

  dimension: home_confinement_cases {
    type: number
    sql: ${TABLE}.home_confinement_cases ;;
  }

  dimension: hospitalized_patients_intensive_care {
    type: number
    sql: ${TABLE}.hospitalized_patients_intensive_care ;;
  }

  dimension: hospitalized_patients_symptoms {
    type: number
    sql: ${TABLE}.hospitalized_patients_symptoms ;;
  }

  dimension: new_current_confirmed_cases {
    type: number
    sql: ${TABLE}.new_current_confirmed_cases ;;
  }

  dimension: new_total_confirmed_cases {
    type: number
    sql: ${TABLE}.new_total_confirmed_cases ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: recovered {
    type: number
    sql: ${TABLE}.recovered ;;
  }

  dimension: tests_performed {
    type: number
    sql: ${TABLE}.tests_performed ;;
  }

  dimension: total_confirmed_cases {
    type: number
    sql: ${TABLE}.total_confirmed_cases ;;
  }

  dimension: total_current_confirmed_cases {
    type: number
    sql: ${TABLE}.total_current_confirmed_cases ;;
  }

  dimension: total_hospitalized_patients {
    type: number
    sql: ${TABLE}.total_hospitalized_patients ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure:  average {
    type: average
    sql: ${hospitalized_patients_intensive_care} ;;
  }
}
