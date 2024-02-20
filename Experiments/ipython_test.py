import IPython

e = IPython.embed


def main():
    a = 10
    b = 20
    e(header="First time")
    c = 30
    d = 40
    e()


if __name__ == "__main__":
    main()
