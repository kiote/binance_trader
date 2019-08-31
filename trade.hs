import Network.HTTP.Conduit
import qualified Data.ByteString.Lazy as LB

tradingPrice :: Fractional p => [Char] -> [Char] -> p
tradingPrice from to 
    | from == "BTC" && to == "USDT" = 10200
    | from == "USDT" && to == "BTC" = 1 / tradingPrice "BTC" "USDT"

main = do
    putStrLn "Asset curency: "
    dataFromFile <- getContents
    putStrLn("Your file lines are ")
    mapM_ print $ lines dataFromFile
    simpleHttp "https://api.binance.com/api/v3/avgPrice?symbol=BTCUSDT" >>= LB.putStr
