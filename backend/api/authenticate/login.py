import pymysql
from app import app
from db import mysql
import json
from flask import jsonify
from flask import flash, request
from werkzeug.security import generate_password_hash, check_password_hash
from flask_cors import CORS
from time import gmtime, strftime
import datetime
# from


def login():
    try:
        _name = request.form.getlist("username")[0]
        _password = request.form.getlist("password")[0]
        if _name and _password and request.method == "POST":
            conn = mysql.connect()
            cursor = conn.cursor(pymysql.cursors.DictCursor)
            cursor.execute("SELECT * FROM user WHERE BINARY username=%s", (_name))
            row = cursor.fetchone()
            if row:
                if check_password_hash(row["password"], _password):
                    print("signed")
                    resp = jsonify(valid=row["username"])
                else:
                    resp = jsonify(valid=False)
                    print("unsigned")
            else:
                resp = jsonify(valid=False)
            resp.status_code = 200
            return resp
        else:
            return not_found()
    except Exception as e:
        print("Not")
        print(e)
    finally:
        print('Done')
        # cursor.close()
        # conn.close()
