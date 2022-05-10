import pickle
from sklearn.datasets import load_diabetes
from sklearn.model_selection import train_test_split

with open('regr.pkl', 'rb') as f:
    data = pickle.load(f)
    print(data)