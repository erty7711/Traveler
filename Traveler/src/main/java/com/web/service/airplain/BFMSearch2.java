package com.web.service.airplain;

public class BFMSearch2 {

	public static String getRequestBody(String depT, String localCode, String repT, String returnCode) {

		StringBuffer bfmsearch = new StringBuffer();

		String ddp = depT;// 起飛時間
		String lc = localCode; // 起飛城市
		String rep = repT;// 回程時間
		String tc = returnCode;// 目的地城市

		// String ddp = "2018-09-01T11:00:00";// 起飛時間
		// String lc = "TPE"; // 起飛城市
		// String rep = "2018-09-05T11:00:00";// 回程時間
		// String tc = "NRT";// 目的地城市

		// bfmsearch.append("{\"OTA_AirLowFareSearchRQ\":{\"ResponseType\":\"OTA\",\"ResponseVersion\":\"3.4.0\",\"Target\":\"Production\",\"Version\":\"3.4.0\",\"POS\":{\"Source\":[{\"PseudoCityCode\":\"A2U8\",\"RequestorID\":{\"Type\":\"1\",\"ID\":\"1\",\"CompanyName\":{\"Code\":\"TN\"}}}]},\"OriginDestinationInformation\":[{\"RPH\":\"1\",\"DepartureDateTime\":\"2018-09-01T11:00:00\",\"OriginLocation\":{\"LocationCode\":\"HKG\"},\"DestinationLocation\":{\"LocationCode\":\"TPE\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}},{\"RPH\":\"2\",\"DepartureDateTime\":\"2018-09-15\",\"OriginLocation\":{\"LocationCode\":\"HKG\"},\"DestinationLocation\":{\"LocationCode\":\"TPE\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}}],\"TravelPreferences\":{\"ValidInterlineTicket\":true,\"FlightTypePref\":{\"MaxConnections\":\"0\"},\"CabinPref\":[{\"Cabin\":\"Y\",\"PreferLevel\":\"Preferred\"}],\"TPA_Extensions\":{\"TripType\":{\"Value\":\"Return\"},\"LongConnectTime\":{\"Min\":100,\"Max\":300,\"Enable\":true},\"ExcludeCallDirectCarriers\":{\"Enabled\":true}}},\"TravelerInfoSummary\":{\"SeatsRequested\":[1],\"AirTravelerAvail\":[{\"PassengerTypeQuantity\":[{\"Code\":\"ADT\",\"Quantity\":1}]}]},\"TPA_Extensions\":{\"IntelliSellTransaction\":{\"RequestType\":{\"Name\":\"50ITINS\"}}}}}");
		bfmsearch
				.append("{\"OTA_AirLowFareSearchRQ\":{\"ResponseType\":\"OTA\",\"ResponseVersion\":\"3.4.0\",\"Target\":\"Production\",\"Version\":\"3.4.0\",\"POS\":{\"Source\":[{\"PseudoCityCode\":\"A2U8\",\"RequestorID\":{\"Type\":\"1\",\"ID\":\"1\",\"CompanyName\":{\"Code\":\"TN\"}}}]},\"OriginDestinationInformation\":[{\"RPH\":\"1\",\"DepartureDateTime\":\""
						+ ddp + "\",\"OriginLocation\":{\"LocationCode\":\"" + lc
						+ "\"},\"DestinationLocation\":{\"LocationCode\":\"" + tc
						+ "\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}},{\"RPH\":\"2\",\"DepartureDateTime\":\""
						+ rep + "\",\"OriginLocation\":{\"LocationCode\":\"" + tc
						+ "\"},\"DestinationLocation\":{\"LocationCode\":\"" + lc
						+ "\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}}],\"TravelPreferences\":{\"ValidInterlineTicket\":true,\"FlightTypePref\":{\"MaxConnections\":\"0\"},\"CabinPref\":[{\"Cabin\":\"Y\",\"PreferLevel\":\"Preferred\"}],\"TPA_Extensions\":{\"TripType\":{\"Value\":\"Return\"},\"LongConnectTime\":{\"Min\":100,\"Max\":400,\"Enable\":true},\"ExcludeCallDirectCarriers\":{\"Enabled\":true}}},\"TravelerInfoSummary\":{\"SeatsRequested\":[1],\"AirTravelerAvail\":[{\"PassengerTypeQuantity\":[{\"Code\":\"ADT\",\"Quantity\":1}]}]},\"TPA_Extensions\":{\"IntelliSellTransaction\":{\"RequestType\":{\"Name\":\"50ITINS\"}}}}}");
		                                                             										  
		return bfmsearch.toString();
//		return "ok";
	}

}
