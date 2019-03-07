from app import app
from flask_script import Manager

# Manager可以让flask程序可以指定端口和ip来运行
manager = Manager(app)
if __name__ == '__main__':
    manager.run()