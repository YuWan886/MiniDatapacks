import json
import os
from pathlib import Path


def generate_files(input_json_path, output_base_path):
    """
    根据输入的JSON问题文件生成Minecraft数据包文件

    Args:
        input_json_path (str): 输入JSON文件的路径
        output_base_path (str): 输出文件的基础路径
    """
    # 读取输入JSON文件
    with open(input_json_path, "r", encoding="utf-8") as f:
        questions = json.load(f)

    # 确保输出目录存在
    Path(output_base_path).mkdir(parents=True, exist_ok=True)

    # 处理每个问题
    for question in questions:
        question_type = question["type"]
        question_num = question["num"]
        question_text = question["qusetion"]
        answers = question["answers"]
        correct_answer = question["correct"]
        lock = question.get("lock", False)

        # 确定篇章名称（根据类型）
        type_names = {
            1: "方块篇",
            2: "物品篇",
            3: "生物篇",
            4: "结构篇",
            5: "图像篇",
            # 可以根据需要添加更多类型
        }
        chapter_name = type_names.get(question_type, f"类型{question_type}篇")

        # 生成对话框JSON文件
        generate_dialog_json(
            question_type,
            question_num,
            question_text,
            answers,
            correct_answer,
            chapter_name,
            output_base_path,
            lock,
        )

        # 生成mcfunction文件
        generate_mcfunction(
            question_type, question_num, correct_answer, answers, output_base_path, lock
        )


def generate_dialog_json(
    question_type,
    question_num,
    question_text,
    answers,
    correct_answer,
    chapter_name,
    output_base_path,
    lock=False,
):
    """
    生成对话框JSON文件

    Args:
        question_type (int): 问题类型
        question_num (int): 问题编号
        question_text (str): 问题文本
        answers (list): 答案选项列表
        correct_answer (str): 正确答案
        chapter_name (str): 篇章名称
        output_base_path (str): 输出基础路径
        lock (bool): 是否锁定文件，如果为True且文件已存在则不覆写
    """
    # 构建对话框JSON结构
    dialog_data = {
        "type": "multi_action",
        "title": [
            "",
            {"text": "5年挖矿,3年合成", "color": "gold"},
            " | ",
            {"text": chapter_name, "color": "green"},
        ],
        "can_close_with_escape": False,
        "exit_action": {
            "label": {"text": "放弃", "color": "dark_red", "bold": True},
            "action": {"type": "run_command", "command": "trigger Option set 0"},
        },
        "columns": 1,
        "body": [{"type": "plain_message", "contents": {"text": question_text}}],
        "actions": [],
    }

    # 添加答案选项
    option_letters = ["A", "B", "C", "D"]
    for i, answer in enumerate(answers):
        action = {
            "label": {"text": f"{option_letters[i]}. {answer}"},
            "action": {"type": "run_command", "command": f"trigger Option set {i+1}"},
        }
        dialog_data["actions"].append(action)

    # 确定输出路径
    output_dir = os.path.join(
        output_base_path, "data", "53-mnc", "dialog", str(question_type)
    )
    Path(output_dir).mkdir(parents=True, exist_ok=True)
    output_path = os.path.join(output_dir, f"{question_num}.json")

    # 检查文件是否存在且lock为True
    if lock and os.path.exists(output_path):
        print(f"跳过生成对话框文件 {output_path} (文件已存在且lock为True)")
        return

    # 写入文件
    with open(output_path, "w", encoding="utf-8") as f:
        json.dump(dialog_data, f, ensure_ascii=False, indent=2)


def generate_mcfunction(
    question_type, question_num, correct_answer, answers, output_base_path, lock=False
):
    """
    生成mcfunction文件

    Args:
        question_type (int): 问题类型
        question_num (int): 问题编号
        correct_answer (str): 正确答案
        answers (list): 答案选项列表
        output_base_path (str): 输出基础路径
        lock (bool): 是否锁定文件，如果为True且文件已存在则不覆写
    """
    # 确定正确答案的选项字母
    option_letters = ["A", "B", "C", "D"]
    correct_index = -1
    for i, answer in enumerate(answers):
        if answer == correct_answer:
            correct_index = i
            break

    if correct_index == -1:
        print(f"警告: 问题 {question_type}-{question_num} 的正确答案 '{correct_answer}' 不在答案选项中")
        return

    correct_letter = option_letters[correct_index]

    # 构建mcfunction内容
    mcfunction_lines = [
        f'execute if score @s Option matches {correct_index+1} run tellraw @s ["",{{"text":"[53]","color":"gold","bold":true}},{{"text":"回答正确！","color":"green"}}]',
        f"execute if score @s Option matches {correct_index+1} run function 53-mnc:utils/answer/correct",
        "",
        f'execute unless score @s Option matches {correct_index+1} run tellraw @s ["",{{"text":"[53]","color":"gold","bold":true}},{{"text":"回答错误！","color":"red"}},{{"text":"正确答案是：","color":"green"}},{{"text":"{correct_letter}. {correct_answer}","color":"aqua"}}]',
        f"execute unless score @s Option matches {correct_index+1} run function 53-mnc:utils/answer/error",
        "",
        "function 53-mnc:utils/reset_score",
    ]

    # 确定输出路径
    output_dir = os.path.join(
        output_base_path,
        "data",
        "53-mnc",
        "function",
        "check",
        "answer",
        str(question_type),
    )
    Path(output_dir).mkdir(parents=True, exist_ok=True)
    output_path = os.path.join(output_dir, f"{question_num}.mcfunction")

    # 检查文件是否存在且lock为True
    if lock and os.path.exists(output_path):
        print(f"跳过生成mcfunction文件 {output_path} (文件已存在且lock为True)")
        return

    # 写入文件
    with open(output_path, "w", encoding="utf-8") as f:
        f.write("\n".join(mcfunction_lines))


if __name__ == "__main__":
    # 使用示例
    input_file = "questions.json"  # 替换为你的输入JSON文件路径
    output_directory = "../"  # 替换为你想要的输出目录

    generate_files(input_file, output_directory)
    print(f"文件已生成到 {output_directory} 目录中")
