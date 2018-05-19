from datetime import datetime, timedelta  
import time  
from collections import namedtuple  
import pandas as pd  
import requests  
import matplotlib.pyplot as plt  
import matplotlib
import pickle
from matplotlib import style

style.use("ggplot")

df=pd.DataFrame.from_csv("DataSet_Final_Final.csv")
#target_date = datetime(2016, 1, 1)  
#str=target_date.strftime("%d-%m-%Y")

df['mintempm_1']=0
df['mintempm_2']=0

df['maxtempm_1']=0
df['maxtempm_2']=0

df['maxhumidity_1']=0
df['maxhumidity_2']=0

df['minhumidity_1']=0
df['minhumidity_2']=0

for date in df.iterrows():
	print(date)
	try:
		date_1=date[0]+timedelta(days=1)
		date_2=date[0]+timedelta(days=2)
		
		mintempm_1=df.loc[date_1]["mintempm"]
		mintempm_2=df.loc[date_2]["mintempm"]
		
		maxtempm_1=df.loc[date_1]["maxtempm"]
		maxt-empm_2=df.loc[date_2]["maxtempm"]
		
		maxhumidity_1=df.loc[date_1]["maxhumidity"]
		maxhumidity_2=df.loc[date_2]["maxhumidity"]
		
		minhumidity_1=df.loc[date_1]["minhumidity"]
		minhumidity_2=df.loc[date_2]["minhumidity"]
		
		#print(date_1,meantempm_1,date_2,meantempm_2)
		df.set_value(date[0],'mintempm_1',mintempm_1)
		df.set_value(date[0],'mintempm_2',mintempm_2)
		
		df.set_value(date[0],'maxtempm_1',maxtempm_1)
		df.set_value(date[0],'maxtempm_2',maxtempm_2)
		
		df.set_value(date[0],'maxhumidity_1',maxhumidity_1)
		df.set_value(date[0],'maxhumidity_2',maxhumidity_2)
		
		df.set_value(date[0],'minhumidity_1',minhumidity_1)
		df.set_value(date[0],'minhumidity_2',minhumidity_2)
		
	except Exception as e:
		print(str(e))
		pass
df.to_csv("DataSet_Final_Future_1.csv")
X=[]
for date in df.iterrows():
	X.append(date[0])
#plt.plot(X,df['meantempm'],color='b')
plt.plot(X,df['maxtempm'],color='r')
plt.plot(X,df['mintempm'],color='white')

plt.show()
	
'''df1=pd.DataFrame.from_csv("Weather_data.csv")
df=pd.DataFrame.from_csv("Weather_data1.csv")
df=df.append(df1)
df.to_csv("test.csv")
df=pd.DataFrame.from_csv("Weather_data_1.csv")
df=df.drop(df.index[:6])
df.to_csv("Weather_data_11.csv")'''