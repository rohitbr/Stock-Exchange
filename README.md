# stock_exchange




https://github.com/rohitbr/stock_exchange/assets/1514130/59583aa3-7e1c-417a-90af-c3cc14d22f60




## Getting Started

This architecture followed is MVVM. I have used Freezed and Json Serializable to model the StockResponse objects, views are designed by native Widgets, navigation is provided by Router Widget of the Navigator. ViewModels contain all the business logic. Used Riverpod for state management.


1. Get stocks from 5 different symbols.
2. Add a ticker for every 5 seconds.
3. After comparing the previous fetch, show up arrow, down arrow or equal arrow to indicate whether stock has increased decreased or stayed the same.
4. Show initial loading spinner during the first call and then animation on the list view for the rest of the calls.
5. Navigate to detail screen for each stock.
6. Show stock open values on a graph in the detail screen.


