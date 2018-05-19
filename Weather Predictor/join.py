import pandas as pd

df1=pd.DataFrame.from_csv("DataSet_Final.csv")
df=pd.DataFrame.from_csv("DataSet_2014.csv")
df=df.append(df1)
df.to_csv("DataSet_Final_Final.csv")


'''df=pd.DataFrame.from_csv("Weather_data_1.csv")
df=df.drop(df.index[:6])
df.to_csv("Weather_data_11.csv")'''