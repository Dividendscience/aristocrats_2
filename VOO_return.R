VOO_data<-riingo_prices("VOO",start_date = "2019-01-01", end_date = "2019-12-31") %>%
  mutate(date = ymd(date))

DA_dividends_VOO<-VOO_data %>% 
  mutate(div_total = sum(divCash)) %>%
 mutate(div_yield = div_total/close) 

Starting_VOO<-select(filter(DA_dividends_VOO,date=="2019-01-02"),ticker,close) 
Ending_VOO<-select(filter(DA_dividends_VOO,date=="2019-12-31"),ticker,close)

Return_VOO<-(Ending_VOO$close-Starting_VOO$close+5.5714)/Starting_VOO$close


##

VOO_data_2020<-riingo_prices("VOO",start_date = "2020-01-01", end_date = "2020-4-15") %>%
  mutate(date = ymd(date))

DA_dividends_VOO_2020<-VOO_data_2020 %>% 
  mutate(div_total = sum(divCash)) %>%
  mutate(div_yield = div_total/close) 

Starting_VOO_2020<-select(filter(DA_dividends_VOO_2020,date=="2020-01-02"),ticker,close) 
Ending_VOO_2020<-select(filter(DA_dividends_VOO_2020,date=="2020-4-15"),ticker,close)

Return_VOO_2020<-(Ending_VOO_2020$close-Starting_VOO_2020$close)/Starting_VOO_2020$close
