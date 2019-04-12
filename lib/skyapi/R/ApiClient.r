# Skycoin REST API.
#
# Skycoin is a next-generation cryptocurrency.
#
# OpenAPI spec version: 0.25.1
# Contact: contact@skycoin.net
# Generated by: https://openapi-generator.tech


#' ApiClient Class
#'
#' Generic API client for OpenAPI client library builds.
#' OpenAPI generic API client. This client handles the client-
#' server communication, and is invariant across implementations. Specifics of
#' the methods and models for each application are generated from the OpenAPI Generator
#' templates.
#'
#' NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
#' Ref: https://openapi-generator.tech
#' Do not edit the class manually.
#'
#' @export
ApiClient  <- R6::R6Class(
  'ApiClient',
  public = list(
    basePath = "http://127.0.0.1:6420",
    configuration = NULL,
    userAgent = NULL,
    defaultHeaders = NULL,
    initialize = function(basePath, configuration, defaultHeaders){
        if (!missing(basePath)) {
            self$basePath <- basePath
        }

        if (!missing(configuration)) {
            self$configuration <- configuration
        }

        if (!missing(defaultHeaders)) {
            self$defaultHeaders <- defaultHeaders
        }

        self$`userAgent` <- 'OpenAPI-Generator/v0.25.1/r'
    },
    callApi = function(url, method, queryParams, headerParams, body, ...){
        headers <- httr::add_headers(headerParams)

        if (method == "GET") {
            httr::GET(url, queryParams, headers, ...)
        }
        else if (method == "POST") {
            httr::POST(url, queryParams, headers, body = body, ...)
        }
        else if (method == "PUT") {
            httr::PUT(url, queryParams, headers, body = body, ...)
        }
        else if (method == "PATCH") {
            httr::PATCH(url, queryParams, headers, body = body, ...)
        }
        else if (method == "HEAD") {
            httr::HEAD(url, queryParams, headers, ...)
        }
        else if (method == "DELETE") {
            httr::DELETE(url, queryParams, headers, ...)
        }
        else {
            stop("http method must be `GET`, `HEAD`, `OPTIONS`, `POST`, `PATCH`, `PUT` or `DELETE`.")
        }
    }
  )
)