# importing Flask and other modules
from flask import Flask, request, render_template
import pandas as pd
from sklearn.linear_model import LinearRegression
import joblib

# Flask constructor
app = Flask(__name__)


@app.route('/')
def home():
    return render_template('website.html')


# A decorator used to tell the application
# which URL is associated function
@app.route('/blood_pressure', methods=["GET", "POST"])
def blood_pressure():
    if request.method == "POST":
        age = request.form.get("age")
        weight = request.form.get("weight")
        clf = joblib.load("regr.pkl")
        x = pd.DataFrame([[age, weight]], columns=["Age", "Weight"])
        prediction = clf.predict(x)[0]
        return render_template('website.html', shortcode=prediction)


if __name__ == '__main__':
    app.run()
