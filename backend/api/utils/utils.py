from flask import jsonify
from app import app
from db import mysql
import json
from flask import jsonify
from flask import flash, request
from werkzeug.security import generate_password_hash, check_password_hash
from flask_cors import CORS
from datetime import date
import uuid



def not_found(error=None):
    message = {"status": 404, "message": "Not Found: " + request.url}
    resp = jsonify(message)
    resp.status_code = 404
    return resp


def check_session(uid):
    """
        Function to check if the user sessions exists or is it a
        first time login. If session exists beforehand it returns
        True, else returns False.
    """
    try:
        sql = "SELECT * FROM session WHERE uid=%s;"
        data = (uid)
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute(sql, data)
        rows = cursor.fetchall()
        conn.commit()
        # print(len(rows))
        if rows:
            return dict(exists=True,
                        skey=rows[0][1])
        else:
            return dict(exists=False,
                        skey='')
    except Exception as e:
        print('====================== EXCEPTION ========================')
        print(e)
    finally:
        # print('Done checking')
        cursor.close()
        conn.close()


def create_session(uid):
    """
        Function to generate a universally unique id to be used as
        a session key. After inserting a new record in the session
        table, this function returns the session key
    """
    try:
        skey = uuid.uuid4().hex + uuid.uuid4().hex
        sql = "INSERT INTO session(skey, uid, status) VALUES (%s, %s, %s);"
        data = (skey, uid, 1)
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute(sql, data)
        conn.commit()
        return skey
    except Exception as e:
        print('====================== EXCEPTION ========================')
        print(e)
    finally:
        cursor.close()
        conn.close()



def verify_session(skey, uid):
    """
        Function to verify if the session is valid. Returns true if
        session exists and is valid (ie, the status is set to '1',
        indicating that the user has an active online session), else
        returns false.
    """
    try:
        sql = "SELECT * FROM session WHERE uid=%s AND skey=%s;"
        data = (uid, skey)
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute(sql, data)
        rows = cursor.fetchall()
        conn.commit()
        # print(len(rows))
        if rows:
            if rows[0][3] == 1:
                return True
            else:
                return False
        else:
            return False
    except Exception as e:
        print('====================== EXCEPTION ========================')
        print(e)
    finally:
        # print('Done')
        cursor.close()
        conn.close()


def update_session(uid):
    """
        Function to update session to online ie, 1.
    """
    try:
        sql = "UPDATE session SET status=1 WHERE uid=%s"
        data = (uid)
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute(sql, data)
        rows = cursor.fetchall()
        conn.commit()
    except Exception as e:
        print('====================== EXCEPTION ========================')
        print(e)
    finally:
        # print('Done')
        cursor.close()
        conn.close()



def calculate_age(born):
    """
        Function to calculate the age using birthdate. Accepts a time.strptime()
        tuple date object as its argument. Returns the age as an integer
        (in years).
    """
    today = date.today()
    return today.year - born.tm_year - ((today.month, today.day) < (born.tm_mon, born.tm_mday))









#
