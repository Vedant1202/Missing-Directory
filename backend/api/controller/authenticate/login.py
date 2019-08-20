import pymysql
# from app import app
from db import mysql
# import json
from flask import jsonify
from flask import request
# from flask import flash
from werkzeug.security import check_password_hash
# from werkzeug.security import generate_password_hash
# from flask_cors import CORS
# from time import gmtime, strftime
# import datetime
from utils.utils import check_session, create_session, verify_session, not_found, update_session
# from


def login():
    try:
        _username = request.form.getlist("username")[0]
        _password = request.form.getlist("password")[0]

        if _username and _password and request.method == "POST":
            conn = mysql.connect()
            cursor = conn.cursor(pymysql.cursors.DictCursor)
            cursor.execute("SELECT * FROM user WHERE BINARY username=%s", (_username))
            row = cursor.fetchone()
            # print(row)
            # print(row['username'])

            if row:
                if check_password_hash(row["password"], _password):
                # if row["password"] ==  _password:
                    print("signed")
                    sess = check_session(row["uid"])
                    update_session(row['uid'])
                    print('sess', sess)
                    print('skey=', sess['skey'])
                    print("verify_session=", verify_session(sess['skey'], row['uid']))
                    if sess['exists']:
                        print('sess1')
                        resp = jsonify(uid=row["uid"],
                                       skey=sess['skey'],
                                       valid=True)
                    else:
                        print('sess2')
                        skey = create_session(row["uid"])
                        resp = jsonify(uid=row["uid"],
                                       skey=sess['skey'],
                                       valid=True)

                else:
                    resp = jsonify(valid=False)
                    print("unsigned")
                resp.status_code = 200
                return resp
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
