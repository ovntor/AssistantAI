#!/bin/bash

# Обновление системы
sudo apt update
sudo apt upgrade -y

# Установка Python 3.11 и необходимых зависимостей
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y python3.11 python3.11-venv python3.11-dev

# Создание виртуального окружения
python3.11 -m venv tts_env
source tts_env/bin/activate

# Обновление pip
pip install --upgrade pip

# Установка Coqui-ai-TTS
pip install git+https://github.com/coqui-ai/TTS

# Дополнительные пакеты для TTS (по необходимости)
# pip install -r requirements_tts.txt 

# Вывод сообщения об успешной установке
echo "Установка Python 3.11 и Coqui-ai-TTS завершена."
echo "Активируйте виртуальное окружение командой: source tts_env/bin/activate"
