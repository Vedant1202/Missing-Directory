# import pymysql
from app import app
from db import mysql
import json
from flask import jsonify
from flask import flash, request
from werkzeug.security import generate_password_hash, check_password_hash
from flask_cors import CORS
import time
from utils.utils import not_found, create_session, calculate_age, verify_session




def missing_fetch(stepsize=20):
    try:
        _skey = request.form.getlist("skey")[0]
        _uid = request.form.getlist("uid")[0]
        _start = request.form.getlist("start")[0]
        _end = int(_start) + stepsize

        # validate the received values
        if _skey and _uid and _start and _end and request.method == "POST" and verify_session(_skey, _uid):
            sql = "SELECT * FROM missing;"
            conn = mysql.connect()
            cursor = conn.cursor()
            cursor.execute(sql)
            rows = list(cursor.fetchall())
            conn.commit()
            resp = jsonify(data=rows[int(_start):_end])
            resp.status_code = 200
            # print(resp)
            return resp
        else:
            return not_found()
    except Exception as e:
        print('====================== EXCEPTION ========================')
        print(e)
    finally:
        print('Done')
        cursor.close()
        conn.close()


def missing_fetch_search(stepsize=20):
    try:
        _skey = request.form.getlist("skey")[0]
        _uid = request.form.getlist("uid")[0]
        _start = request.form.getlist("start")[0]
        _end = int(_start) + stepsize
        _keyword = request.form.getlist("keyword")[0]

        # validate the received values
        if _skey and _uid and _start and _end and _keyword and request.method == "POST" and verify_session(_skey, _uid):
            # sql = "SELECT * FROM missing WHERE fname LIKE %%s% OR lname LIKE %%s% OR medications LIKE %%s% OR prescribed_by LIKE %%s% OR conditions LIKE %%s% OR height LIKE %%s% OR weight LIKE %%s% OR eye_color LIKE %%s% OR skin_color LIKE %%s% OR hair_color LIKE %%s% OR identifications LIKE %%s% OR address LIKE %%s% OR city LIKE %%s%;"
            sql = "SELECT * FROM missing WHERE fname LIKE '%{}%' OR lname LIKE '%{}%' OR medications LIKE '%{}%' OR prescribed_by LIKE '%{}%' OR conditions LIKE '%{}%' OR height LIKE '%{}%' OR weight LIKE '%{}%' OR eye_color LIKE '%{}%' OR skin_color LIKE '%{}%' OR hair_color LIKE '%{}%' OR identifications LIKE '%{}%' OR address LIKE '%{}%' OR city LIKE '%{}%' OR age LIKE '%{}%';".format(_keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword)
            data = (_keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword, _keyword)
            # print(sql%(data))
            conn = mysql.connect()
            cursor = conn.cursor()
            cursor.execute(sql)
            rows = list(cursor.fetchall())
            conn.commit()
            resp = jsonify(data=rows[int(_start):_end])
            resp.status_code = 200
            # print(resp)
            return resp
        else:
            return not_found()
    except Exception as e:
        print('====================== EXCEPTION ========================')
        print(e)
    finally:
        print('Done')
        # cursor.close()
        # conn.close()







#
