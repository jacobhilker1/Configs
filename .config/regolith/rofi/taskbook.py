#!/usr/bin/env python3

import json
import os
from datetime import datetime, timedelta

path = os.environ['HOME'] + '/Dropbox/.taskbook/storage/storage.json'
file = open(path, 'r')
data = json.loads(file.read())


def time_ago(date):
    date_fmt = '%Y%m%d %H%M%S'
    date = datetime.strptime(date.strftime(date_fmt), date_fmt)
    today = datetime.strptime(datetime.now().strftime(date_fmt), date_fmt)
    time_ago = today - date
    days, hours = time_ago.days, time_ago.seconds // 3600
    return days, hours


boards = []
boards.extend([v['boards'][0] for _, v in data.items() if v['boards'][0] not in boards])
boards = sorted(set(boards))

boards_count = 0
tasks_count = 0
for board in boards:
    tasks_count = 0
    if boards_count < 4:
#        print(f'\n<b><i>{board}</i></b>'.replace('@',''))
        boards_count += 1
        for _, v in data.items():
            date = datetime.fromtimestamp(int(v['_timestamp']) / 1000)
            days, hours = time_ago(date)
            days_ago = (
                    '${color3}' + f'{days}d {hours}h' + '${color}'
                    if days > 0
                    else 'today'
                    )
            if v['boards'][0] == board:
                is_starred = '<span foreground="#d79921">🟊</span> ' if v['isStarred'] else ''
                if v['_isTask']:
                    if not v['isComplete']:
                        if not v['inProgress']:
                            print(

                                    f'   {v["_id"]:02}. '

                                    +'<span foreground="#cc241d"> </span> '

                                     + f'<i>{board}</i> - '.replace('@','')
                                    + f'{v["description"]} {is_starred} '
                                    )
                        if v['inProgress']:
                            print(
                                    f'   {v["_id"]:02}. '
                                    +'<span foreground="#458588"></span>  '
                                    + f'<i>{board}</i> - '.replace('@','')
                                    + f'{v["description"]} {is_starred}'
                                    )
                            tasks_count += 1
file.close()


