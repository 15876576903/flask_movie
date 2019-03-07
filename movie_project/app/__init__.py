from flask import Flask, render_template
import pymysql
import mysql.connector
from werkzeug.security import generate_password_hash
from flask_sqlalchemy import SQLAlchemy
import os
from flask_redis import FlaskRedis
from flask_wtf.csrf import CSRFProtect, CsrfProtect


csrf = CSRFProtect()
app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "mysql+mysqlconnector://root:1234@127.0.0.1:3306/movie"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True

app.config['REDIS_URL'] = 'redis://127.0.0.1:6379/0'

app.config['SECRET_KEY'] = '6b1fb66d4dae403cbd2c109b15ff774b'

# 文件上传目录
app.config['UP_DIR'] = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'static/upload/')
app.config['FC_DIR'] = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'static/upload/users/')


app.debug = False
rd = FlaskRedis(app)
# 注册redis
rd.init_app(app)
# csrf保护
csrf.init_app(app)
db = SQLAlchemy(app)    


from app.home import home as home_blueprint
from app.admin import admin as admin_blueprint

app.register_blueprint(home_blueprint)
app.register_blueprint(admin_blueprint, url_prefix='/admin')




# 404页面
@app.errorhandler(404)
def page_not_found(error):
    return render_template('home/404.html'), 404