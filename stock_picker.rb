def stock(prices)
    profit = 0

    for buy in 0...prices.length
        sell = buy + 1
        while sell < prices.length
          difference = prices[sell] - prices[buy]
          if difference > profit
            profit = difference
            good_buy = buy
            good_sell = sell
          end
            sell += 1
        end
    end
    if profit <= 0 
        "It's not good time to buy"
    else
        "buy on day #{good_buy} 
        and sell on day #{good_sell} 
        and you will get profit of #{profit}"
    end
end
puts stock([6,5,4,3,7,8,9,7])
 