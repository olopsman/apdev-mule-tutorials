%dw 2.0
output application/xml
---
root @(airline: payload.airline): {
	airline : payload.airline, 
	price : payload.price as Number * 2,
	hub : "MUA",
	flightDetails : ++ (payload.airline as String, payload.flightCode as String)
}