#!/bin/bash

###################################################################################
#                                                                          ########
#                      "ALL INFORMATION SHALL FOREVER REMAIN FREE"         ########
#                          -//GHOST                                        ########
#                                                                          ########
#                                  aghostlyghoul@pm.me                     ########
#                                  -------------------                     ########
###################################################################################

generateRandomSQLQueries() {
    local numQueries="$1"  # HOW MANYY

    # KEYWORD ARRAYYY
    local keywords=("SELECT" "FROM" "WHERE" "INSERT" "INTO" "INSERT INTO" "GET" "DOWNLOAD" "CAT" "FIND" "QUERY" "TO" "UPDATE" "DELETE FROM" "USERS" "ORDERS" "PRODUCTS" "CUSTOMERS" "INVOICE" "RECIEPTS" "FINAL" "FINISHED" "CUST" "DIRECTORY" "DATA" "*" "SETTING" "SETTINGS" "PAY" "PAYMENT" "HTML" "JAVASCRIPT" "SCRIPT" "INFO" "ID" "NAME" "EMAIL" "ADDRESS" "PHONE" "PASSWORD" "USERNAME" "ACCOUNT" "ACCOUNTS" "CURRENT" "1" "1=1" "OR" "1 OR 1" "OR 1")

    # TABLE NAME ARRAYYY
    local tables=("SELECT" "FROM" "WHERE" "INSERT" "INTO" "INSERT INTO" "GET" "DOWNLOAD" "CAT" "FIND" "QUERY" "TO" "UPDATE" "DELETE FROM" "USERS" "ORDERS" "PRODUCTS" "CUSTOMERS" "INVOICE" "RECIEPTS" "FINAL" "FINISHED" "CUST" "DIRECTORY" "DATA" "*" "SETTING" "SETTINGS" "PAY" "PAYMENT" "HTML" "JAVASCRIPT" "SCRIPT" "INFO" "ID" "NAME" "EMAIL" "ADDRESS" "PHONE" "PASSWORD" "USERNAME" "ACCOUNT" "ACCOUNTS" "CURRENT" "1" "1=1" "OR" "1 OR 1" "OR 1")

    # COLOMN NAMEZZ
    local columns=("SELECT" "FROM" "WHERE" "INSERT" "INTO" "INSERT INTO" "GET" "DOWNLOAD" "CAT" "FIND" "QUERY" "TO" "UPDATE" "DELETE FROM" "USERS" "ORDERS" "PRODUCTS" "CUSTOMERS" "INVOICE" "RECIEPTS" "FINAL" "FINISHED" "CUST" "DIRECTORY" "DATA" "*" "SETTING" "SETTINGS" "PAY" "PAYMENT" "HTML" "JAVASCRIPT" "SCRIPT" "INFO" "ID" "NAME" "EMAIL" "ADDRESS" "PHONE" "PASSWORD" "USERNAME" "ACCOUNT" "ACCOUNTS" "CURRENT" "1" "1=1" "OR" "1 OR 1" "OR 1")


    for ((i = 1; i <= numQueries; i++)); do
        local query="ANY"


        for ((j = 1; j <= 5; j++)); do
            local randomKeywordIndex=$((RANDOM % ${#keywords[@]}))
            local randomTableIndex=$((RANDOM % ${#tables[@]}))
            local randomColumnIndex=$((RANDOM % ${#columns[@]}))

            query+=" ${keywords[randomKeywordIndex]} ${tables[randomTableIndex]} ${columns[randomColumnIndex]}"


            if [ "${keywords[randomKeywordIndex]}" == "WHERE" ]; then
                local randomCondition=$((RANDOM % 2))
                if [ "$randomCondition" -eq 0 ]; then
                    query+=" = *"
                else
                    query+=" != visable"
                fi
            fi
        done

        echo "$query" >> ORIGSQLR22.txt
    done
}


# Generate 3000 random SQL query strings.
generateRandomSQLQueries 10000
