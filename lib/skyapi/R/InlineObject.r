# Skycoin REST API.
#
# Skycoin is a next-generation cryptocurrency.
#
# OpenAPI spec version: 0.25.1
# Contact: contact@skycoin.net
# Generated by: https://openapi-generator.tech


#' InlineObject Class
#'
#' @field change_address 
#' @field hours_selection 
#' @field ignore_unconfirmed 
#' @field to 
#' @field wallet 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineObject <- R6::R6Class(
  'InlineObject',
  public = list(
    `change_address` = NULL,
    `hours_selection` = NULL,
    `ignore_unconfirmed` = NULL,
    `to` = NULL,
    `wallet` = NULL,
    initialize = function(`change_address`, `hours_selection`, `ignore_unconfirmed`, `to`, `wallet`){
      if (!missing(`change_address`)) {
        stopifnot(is.character(`change_address`), length(`change_address`) == 1)
        self$`change_address` <- `change_address`
      }
      if (!missing(`hours_selection`)) {
        stopifnot(R6::is.R6(`hours_selection`))
        self$`hours_selection` <- `hours_selection`
      }
      if (!missing(`ignore_unconfirmed`)) {
        self$`ignore_unconfirmed` <- `ignore_unconfirmed`
      }
      if (!missing(`to`)) {
        stopifnot(is.list(`to`), length(`to`) != 0)
        lapply(`to`, function(x) stopifnot(R6::is.R6(x)))
        self$`to` <- `to`
      }
      if (!missing(`wallet`)) {
        stopifnot(R6::is.R6(`wallet`))
        self$`wallet` <- `wallet`
      }
    },
    toJSON = function() {
      InlineObjectObject <- list()
      if (!is.null(self$`change_address`)) {
        InlineObjectObject[['change_address']] <- self$`change_address`
      }
      if (!is.null(self$`hours_selection`)) {
        InlineObjectObject[['hours_selection']] <- self$`hours_selection`$toJSON()
      }
      if (!is.null(self$`ignore_unconfirmed`)) {
        InlineObjectObject[['ignore_unconfirmed']] <- self$`ignore_unconfirmed`
      }
      if (!is.null(self$`to`)) {
        InlineObjectObject[['to']] <- lapply(self$`to`, function(x) x$toJSON())
      }
      if (!is.null(self$`wallet`)) {
        InlineObjectObject[['wallet']] <- self$`wallet`$toJSON()
      }

      InlineObjectObject
    },
    fromJSON = function(InlineObjectJson) {
      InlineObjectObject <- jsonlite::fromJSON(InlineObjectJson)
      if (!is.null(InlineObjectObject$`change_address`)) {
        self$`change_address` <- InlineObjectObject$`change_address`
      }
      if (!is.null(InlineObjectObject$`hours_selection`)) {
        hours_selectionObject <- Apiv1wallettransactionHoursSelection$new()
        hours_selectionObject$fromJSON(jsonlite::toJSON(InlineObjectObject$hours_selection, auto_unbox = TRUE))
        self$`hours_selection` <- hours_selectionObject
      }
      if (!is.null(InlineObjectObject$`ignore_unconfirmed`)) {
        self$`ignore_unconfirmed` <- InlineObjectObject$`ignore_unconfirmed`
      }
      if (!is.null(InlineObjectObject$`to`)) {
        self$`to` <- lapply(InlineObjectObject$`to`, function(x) {
          toObject <- Apiv1wallettransactionTo$new()
          toObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          toObject
        })
      }
      if (!is.null(InlineObjectObject$`wallet`)) {
        walletObject <- Apiv1wallettransactionWallet$new()
        walletObject$fromJSON(jsonlite::toJSON(InlineObjectObject$wallet, auto_unbox = TRUE))
        self$`wallet` <- walletObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "change_address": %s,
           "hours_selection": %s,
           "ignore_unconfirmed": %s,
           "to": [%s],
           "wallet": %s
        }',
        self$`change_address`,
        self$`hours_selection`$toJSON(),
        self$`ignore_unconfirmed`,
        lapply(self$`to`, function(x) paste(x$toJSON(), sep=",")),
        self$`wallet`$toJSON()
      )
    },
    fromJSONString = function(InlineObjectJson) {
      InlineObjectObject <- jsonlite::fromJSON(InlineObjectJson)
      self$`change_address` <- InlineObjectObject$`change_address`
      Apiv1wallettransactionHoursSelectionObject <- Apiv1wallettransactionHoursSelection$new()
      self$`hours_selection` <- Apiv1wallettransactionHoursSelectionObject$fromJSON(jsonlite::toJSON(InlineObjectObject$hours_selection, auto_unbox = TRUE))
      self$`ignore_unconfirmed` <- InlineObjectObject$`ignore_unconfirmed`
      self$`to` <- lapply(InlineObjectObject$`to`, function(x) Apiv1wallettransactionTo$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      Apiv1wallettransactionWalletObject <- Apiv1wallettransactionWallet$new()
      self$`wallet` <- Apiv1wallettransactionWalletObject$fromJSON(jsonlite::toJSON(InlineObjectObject$wallet, auto_unbox = TRUE))
    }
  )
)
