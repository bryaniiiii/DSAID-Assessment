import pandas as pd


df1 = pd.read_csv('data/dataset1.csv')
df2 = pd.read_csv('data/dataset2.csv')
df1.dropna(subset=['name'],inplace=True)
df2.dropna(subset=['name'],inplace=True)
df1[['first_name','last_name']] = df1['name'].loc[df1['name'].str.split().str.len() == 2].str.split(expand=True)
df2[['first_name','last_name']] = df2['name'].loc[df2['name'].str.split().str.len() == 2].str.split(expand=True)
df1['price'] = df1['price'].astype('string')
df2['price'] = df2['price'].astype('string')
df1['price'].str.replace(r'^(0+)', '').fillna('0')
df2['price'].str.replace(r'^(0+)', '').fillna('0')
df1['price'] = df1['price'].astype('float64')
df2['price'] = df2['price'].astype('float64')
df1['above_100'] = False
df1.loc[df1['price']>100,'above_100'] = True
df2['above_100'] = False
df2.loc[df2['price']>100,'above_100'] = True
df1.to_csv('data/dataset1_clean.csv')
df2.to_csv('data/dataset2_clean.csv')