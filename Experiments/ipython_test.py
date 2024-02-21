import time

import IPython
from traitlets.config import Config

e = IPython.embed


def test1():
    time.sleep(5)
    exit()


def main():
    c = Config()

    c.InteractiveShellApp.exec_lines = [
        "test1()",
    ]

    a = 10
    b = 20
    e(header="First time", config=c)

    c = 30
    d = 40
    e()


if __name__ == "__main__":
    main()
