import datetime

def get_formatted_time():
    now = datetime.datetime.now()
    return now.strftime("%y%m%d %I:%M %p").upper()

if __name__ == "__main__":
    with open("temp_time.txt", "w", encoding="utf-8") as f:
        f.write(get_formatted_time())
