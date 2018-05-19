import numpy as np
import matplotlib.pyplot as plt
import sklearn
from sklearn import svm
from sklearn import preprocessing
import pandas as pd
from matplotlib import style
style.use("ggplot")
import statistics

features = ["meantempm", "meandewptm", "meanpressurem", "maxhumidity", "minhumidity", "maxtempm",  
            "mintempm", "maxdewptm", "mindewptm", "maxpressurem", "minpressurem", "precipm"]

data_df=pd.DataFrame.from_csv("DataSet_Final_Future.csv")

X=np.array(data_df[features].values)
X=preprocessing.scale(X)

X = X.reshape(len(X), -1)


mintemp_1=data_df["mintempm_1"].values.tolist()
maxtemp_1=data_df["maxtempm_1"].values.tolist()
minhumidity_1=data_df["minhumidity_1"].values.tolist()
maxhumidity_1=data_df["maxhumidity_1"].values.tolist()
mintemp_2=data_df["mintempm_2"].values.tolist()
maxtemp_2=data_df["maxtempm_2"].values.tolist()
minhumidity_2=data_df["minhumidity_2"].values.tolist()
maxhumidity_2=data_df["maxhumidity_2"].values.tolist()


clf_1=svm.SVC(kernel="poly",C=1.0)
clf_2=svm.SVC(kernel="poly",C=1.0)
clf_3=svm.SVC(kernel="poly",C=1.0)
clf_4=svm.SVC(kernel="poly",C=1.0)
clf_5=svm.SVC(kernel="poly",C=1.0)
clf_6=svm.SVC(kernel="poly",C=1.0)
clf_7=svm.SVC(kernel="poly",C=1.0)
clf_8=svm.SVC(kernel="poly",C=1.0)


clf_1.fit(X[:-2],mintemp_1[:-2])
clf_2.fit(X[:-2],maxtemp_1[:-2])
clf_3.fit(X[:-2],minhumidity_1[:-2])
clf_4.fit(X[:-2],maxhumidity_1[:-2])
clf_5.fit(X[:-2],mintemp_2[:-2])
clf_6.fit(X[:-2],maxtemp_2[:-2])
clf_7.fit(X[:-2],minhumidity_2[:-2])
clf_8.fit(X[:-2],maxhumidity_2[:-2])

z1=clf_1.predict(X[-1])
z2=clf_2.predict(X[-1])
z3=clf_3.predict(X[-1])
z4=clf_4.predict(X[-1])
z5=clf_5.predict(X[-1])
z6=clf_6.predict(X[-1])
z7=clf_7.predict(X[-1])
z8=clf_8.predict(X[-1])

print("mintempm\tmaxtempm\tminhumidity\tmaxhumidity")
print(z1[0],"\t\t",z2[0],"\t\t",z3[0],"\t\t",z4[0])
print(z5[0],"\t\t",z6[0],"\t\t",z7[0],"\t\t",z8[0])

'''X=[]
df = pd.DataFrame.from_csv("DataSet_Final_Future.csv")
for date in df.iterrows():
	X.append(date[0])
	
#plt.plot(X,df['meantempm'],color='b')
plt.plot(X,df['maxtempm'],color='r')
plt.plot(X,df['mintempm'],color='white')

plt.show()'''