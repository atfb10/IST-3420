# Name: Adam Forestier
# Class: IST 3420
# Assignment: Homework 4
# Date: September 24, 2017

require(rjson)
library(XML)
library(RCurl)

appid <- 570
n_new <- 300

url <- paste("http://api.steampowered.com/ISteamNews/GetNewsForApp/v0002/?appid=", appid,
             "&count=", n_new, "&maxlength=300&format=json", sep = "")
