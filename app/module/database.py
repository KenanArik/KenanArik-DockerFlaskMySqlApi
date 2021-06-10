'''
Created on June 10, 2021

@author: Kenan Arik
'''

import pymysql

class Database:
    def connect(self):
        return pymysql.connect("usermgt-mysql","dev","dev","crud_flask" )

    def read(self, id):
        con = Database.connect(self)
        cursor = con.cursor()

        try:
            if id == None:
                cursor.execute("SELECT * FROM user_mgt order by name asc")
            else:
                cursor.execute("SELECT * FROM user_mgt where id = %s order by name asc", (id,))

            return cursor.fetchall()
        except:
            return ()
        finally:
            con.close()

    def insert(self,data):
        con = Database.connect(self)
        cursor = con.cursor()

        try:
            cursor.execute("INSERT INTO user_mgt(name,age) VALUES(%s, %s)", (data['name'],data['age'],))
            con.commit()

            return True
        except:
            con.rollback()

            return False
        finally:
            con.close()

    def update(self, id, data):
        con = Database.connect(self)
        cursor = con.cursor()

        try:
            cursor.execute("UPDATE user_mgt set name = %s, age = %s where id = %s", (data['name'],data['age'],id,))
            con.commit()

            return True
        except:
            con.rollback()

            return False
        finally:
            con.close()

    def delete(self, id):
        con = Database.connect(self)
        cursor = con.cursor()

        try:
            cursor.execute("DELETE FROM user_mgt where id = %s", (id,))
            con.commit()

            return True
        except:
            con.rollback()

            return False
        finally:
            con.close()
