# importing Flask and other modules
from flask import Flask, request, render_template

# Flask constructor
app = Flask(__name__)


# A decorator used to tell the application
# which URL is associated function
@app.route('/blood_pressure', methods=["GET", "POST"])
def blood_pressure():
    if request.method == "POST":
        # getting input with name = fname in HTML form
        age = request.form.get("age")
        # getting input with name = lname in HTML form
        weight = request.form.get("weight")
        render_template('blood_pressure.html', shortcode="Your age is :" + age + "Your weight is :" + weight)

if __name__ == '__main__':
    app.run()