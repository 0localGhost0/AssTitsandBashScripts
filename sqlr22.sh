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
    local keywords=("SELECT" "FROM" "WHERE" "INSERT INTO" "UPDATE" "DELETE FROM")

    # TABLE NAME ARRAYYY
    local tables=("users" "orders" "products" "customers" "invoices" "data" "*" "settings" "payment" "html" "javascript" "info" "id" "name" "email" "address" "phone" "password" "username" )

    # COLOMN NAMEZZ
    local columns=("id" "name" "email" "address" "phone" "password" "username" "users" "orders" "products" "customers" "invoices" "data" "*" "settings" "payment" "html" "javascript" "info" )


    for ((i = 1; i <= numQueries; i++)); do
        local query=""


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

        echo "$query" >> sqlr2s
    done
}


# Generate 3000 random SQL query strings.
generateRandomSQLQueries 3000
