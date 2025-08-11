$dialog show @a[tag=normal] \
{\
    "type": "notice",\
    "title": {\
        "text": "谁是卧底"\
    },\
    "body": {\
        "type": "plain_message",\
        "contents": [\
            {\
                "text": "你的词条是",\
                "bold": true\
            },\
            {\
                "text": "\n\n$(normal_word)",\
                "color": "gold",\
                "bold": true\
            },\
            {\
                "text": "\n\n[!]该消息只会出现一次",\
                "color": "red",\
                "bold": true\
            }\
        ]\
    },\
    "can_close_with_escape": false,\
    "action": {\
        "label": {\
            "text": "确定"\
        },\
        "action": {\
            "type": "run_command",\
            "command": "trigger TriggerFunction set 1"\
        }\
    }\
}

$dialog show @a[tag=spy] \
{\
    "type": "notice",\
    "title": {\
        "text": "谁是卧底"\
    },\
    "body": {\
        "type": "plain_message",\
        "contents": [\
            {\
                "text": "你的词条是",\
                "bold": true\
            },\
            {\
                "text": "\n\n$(spy_word)",\
                "color": "gold",\
                "bold": true\
            },\
            {\
                "text": "\n\n[!]该消息只会出现一次",\
                "color": "red",\
                "bold": true\
            }\
        ]\
    },\
    "can_close_with_escape": false,\
    "action": {\
        "label": {\
            "text": "确定"\
        },\
        "action": {\
            "type": "run_command",\
            "command": "trigger TriggerFunction set 1"\
        }\
    }\
}