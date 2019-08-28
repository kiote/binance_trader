tradingPrice :: Fractional p => [Char] -> [Char] -> p
tradingPrice from to 
    | from == "BTC" && to == "USDT" = 10200
    | from == "USDT" && to == "BTC" = 1 / tradingPrice "BTC" "USDT"

main = putStrLn " hello , binance "
