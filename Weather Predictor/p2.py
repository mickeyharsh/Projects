from datetime import datetime, timedelta  
import time  
from collections import namedtuple  
import pandas as pd  
import requests  
import matplotlib.pyplot as plt  
import pickle

features = ["date", "meantempm", "meandewptm", "meanpressurem", "maxhumidity", "minhumidity", "maxtempm",  
            "mintempm", "maxdewptm", "mindewptm", "maxpressurem", "minpressurem", "precipm"]
			
			
target_date = datetime(2017, 12, 30) #date change karna
DailySummary = namedtuple("DailySummary", features)  
def extract_data(target_date, day): 
	
	records=[]
	#df=pd.DataFrame(columns=features)  
	#df=pd.DataFrame.from_csv("Weather_data1.csv")
	c=0
	for i in range(day):
		date=target_date.strftime('%Y%m%d')
		url="http://api.wunderground.com/api/9317c0d52d58ac3c/history_"+date+"/q/WB/kolkata.json"  
		request = url.format('9317c0d52d58ac3c', target_date.strftime('%Y%m%d'))
		#print(request, target_date.strftime('%Y%m%d'))
		response = requests.get(request)
		c=c+1
		if response.status_code==200:
			data = response.json()['history']['dailysummary'][0]
			records.append(DailySummary(
                date=target_date,
                meantempm=data['meantempm'],
                meandewptm=data['meandewptm'],
                meanpressurem=data['meanpressurem'],
                maxhumidity=data['maxhumidity'],
                minhumidity=data['minhumidity'],
                maxtempm=data['maxtempm'],
                mintempm=data['mintempm'],maxdewptm=data['maxdewptm'],
                mindewptm=data['mindewptm'],
                maxpressurem=data['maxpressurem'],
                minpressurem=data['minpressurem'],
                precipm=data['precipm']))
		else:
			print("Error",date)
		if c==10:
			time.sleep(60)
			c=0
		print(date)
		target_date += timedelta(days=1)
	return records

	
records=extract_data(target_date,10)		
df=pd.DataFrame(records,columns=features).set_index('date')
print(df)
#df.to_csv("3112.csv")
