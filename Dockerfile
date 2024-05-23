# Используем образ Python
FROM python:3.9

# Установка переменных среды
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Установка рабочей директории
WORKDIR /app

# Копирование зависимостей и установка их
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Копирование приложения в контейнер
COPY . /app/

# Команда для запуска сервера Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
