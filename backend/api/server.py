# import pymysql
from app import app
from db import mysql
import json
from flask import jsonify
from flask import flash, request
from werkzeug.security import generate_password_hash, check_password_hash
from flask_cors import CORS
from time import gmtime, strftime
import datetime
# from utils import getLocalTime

from controller.user.add import user_add
from controller.authenticate.login import login
from controller.authenticate.logout import logout
from controller.user.update import user_update
from controller.missing.fetch import missing_fetch, missing_fetch_search
from controller.missing.add import missing_add


CORS(app)


###############################################################################
##                                ROUTES
###############################################################################


# user add route
@app.route("/user/add", methods=["POST"])
# @cross_origin()
def add_user():
    return user_add()


# user edit route
@app.route("/user/update", methods=["POST"])
# @cross_origin()
def update_user():
    return user_update()


# # login route
@app.route("/login", methods=["POST"])
# # @cross_origin()
def login_user():
    return login()


# # logout route
@app.route("/logout", methods=["POST"])
# # @cross_origin()
def logout_user():
    return logout()


# # missing profiles fetch route
@app.route("/missing/fetch", methods=["POST"])
# # @cross_origin()
def fetch_missing():
    return missing_fetch()


# # missing profiles fetch route
@app.route("/missing/search", methods=["POST"])
# # @cross_origin()
def fetch_missing_search():
    return missing_fetch_search()


# # missing profiles add route
@app.route("/missing/add", methods=["POST"])
# # @cross_origin()
def add_missing():
    return missing_add()


# user add route
# @app.route("/user/edit", methods=["POST"])
# @cross_origin()
# def add_user():
#     return user_edit()


#
#
# # blog add route
# @app.route("/blog/add", methods=["POST"])
# # @cross_origin()
# def add_blog():
#     try:
#         _username = request.form.getlist("username")[0]
#         _text = request.form.getlist("text")[0]
#         _title = request.form.getlist("title")[0]
#         _date = getLocalTime()
#         # print(_username)
#         # validate the received values
#         if _username and _text and _date and _title and request.method == "POST":
#             # save edits
#             sql = "INSERT INTO blog(username, blogtext, datewritten, title) VALUES(%s, %s, %s, %s)"
#             data = (_username, _text, _date, _title)
#             conn = mysql.connect()
#             cursor = conn.cursor()
#             cursor.execute(sql, data)
#             conn.commit()
#             resp = jsonify(status="Blog added successfully!")
#             resp.status_code = 200
#             return resp
#         else:
#             return not_found()
#     except Exception as e:
#         print(e)
#     finally:
#         cursor.close()
#         conn.close()
#
#
# # blog fetch route
# @app.route("/blog/fetch", methods=["POST"])
# # @cross_origin()
# def fetch_blog():
#     try:
#         if request.method == "POST":
#             sql = "SELECT * FROM blog ORDER BY idblog DESC;"
#             conn = mysql.connect()
#             cursor = conn.cursor()
#             cursor.execute(sql)
#             rows = cursor.fetchall()
#             conn.commit()
#             resp = jsonify(blogs=rows)
#             resp.status_code = 200
#             return resp
#         else:
#             return not_found()
#     except Exception as e:
#         print(e)
#     finally:
#         cursor.close()
#         conn.close()
#
#
# # fetch my blogs route
# @app.route("/blog/myblogs", methods=["POST"])
# # @cross_origin()
# def my_blog():
#     try:
#         _username = request.form.getlist("username")[0]
#         if _username and request.method == "POST":
#             sql = "SELECT * FROM blog WHERE BINARY username=%s ORDER BY idblog DESC;"
#             data = _username
#             conn = mysql.connect()
#             cursor = conn.cursor()
#             cursor.execute(sql, data)
#             rows = cursor.fetchall()
#             conn.commit()
#             resp = jsonify(blogs=rows)
#             resp.status_code = 200
#             return resp
#         else:
#             return not_found()
#     except Exception as e:
#         print(e)
#     finally:
#         cursor.close()
#         conn.close()
#
#
# # blog fetch route
# @app.route("/user/check", methods=["POST"])
# # @cross_origin()
# def check_user():
#     try:
#         _username = request.form.getlist("username")[0]
#         if _username and request.method == "POST":
#             sql = "SELECT username FROM user WHERE BINARY username = %s"
#             data = _username
#             conn = mysql.connect()
#             cursor = conn.cursor()
#             cursor.execute(sql, data)
#             rows = cursor.fetchall()
#             conn.commit()
#             # print(len(rows))
#             if rows:
#                 resp = jsonify(valid=False)
#             else:
#                 resp = jsonify(valid=True)
#             resp.status_code = 200
#             return resp
#         else:
#             return not_found()
#     except Exception as e:
#         print(e)
#     finally:
#         cursor.close()
#         conn.close()


# 404 handler
@app.errorhandler(404)
def not_found(error=None):
    message = {"status": 404, "message": "Not Found: " + request.url}
    resp = jsonify(message)
    resp.status_code = 404

    return resp


if __name__ == "__main__":
    app.run()
