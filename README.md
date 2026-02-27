# init_nilchan-pet

# How to run

**Run via makefile**
```bash
git clone git@github.com:wrong89/init_nilchan-pet.git && \
cd init_nilchan-pet && \
make run
```

**Run via docker compose**
```bash
git clone git@github.com:wrong89/init_nilchan-pet.git && \
cd init_nilchan-pet && \
docker compose up --no-attach kafka --no-attach kafka-ui
```

# Task API

Базовый префикс: `/api`  
Формат данных: `application/json`

---

## 1. Создать задачу

**POST** `localhost:6060/api/create`

### Request body
```json
{
  "title": "Название задачи"
}
```

Успешный ответ: 201 Created и json:
```json
{
  "id": 1
}
```
Ошибки
- ``400 Bad Request`` — невалидное тело запроса
- ``500 Internal Server Error`` — ошибка при создании задачи

## 2. Получить список задач

**GET** `localhost:6060/api/list`

Успешный ответ: 200 Created и json:
```json
{
  "tasks": [
    {
      "id": 1,
      "title": "Название задачи"
    },
    {
      "id": 2,
      "title": "Название задачи 2",
      "completed": true
    },
  ]
}
```
Ошибки
- ``500 Internal Server Error`` — ошибка при получении списка


## 3. Выполнить task

**PUT** `localhost:6060/api/done`

Request body:
```json
{
  "id": "{some_id}"
}
```

## 4. Удалить task

**DELETE** `localhost:6060/api/delete`

Request body:
```json
{
  "id": "{some_id}"
}
```
