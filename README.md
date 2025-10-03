# DevOps Project 2 - Jenkins Integration

Простий Node.js веб-додаток з Express.js для демонстрації DevOps практик та інтеграції з Jenkins.

## Опис

Це мінімальний веб-сервер, який:
- Відповідає "Hello World!" на головній сторінці (`/`)
- Працює на порту 80
- Включає автоматизовані тести
- Готовий для контейнеризації з Docker

## Технології

- **Node.js** - середовище виконання
- **Express.js** - веб-фреймворк
- **Jest + Supertest** - тестування
- **Docker** - контейнеризація

## Docker Тегування

Проект використовує автоматичне версіювання для Docker образів:

- **`latest`** - завжди останній образ
- **`YYYY.MM.DD-commit`** - унікальний тег з датою та коротким commit hash

Приклад: `svitlanakizilpinar/jenkins-node-js:2025.10.03-99266eb`

## Швидкий старт

### Локальний запуск

```bash
# Встановити залежності
npm install

# Запустити додаток
npm start
```

Додаток буде доступний на http://localhost

### Docker

```bash
# Збудувати образ з автоматичним версіюванням (latest + дата-commit)
DATE_VERSION=$(date +%Y.%m.%d) && COMMIT_HASH=$(git rev-parse --short HEAD) && docker build -t svitlanakizilpinar/jenkins-node-js:latest -t svitlanakizilpinar/jenkins-node-js:$DATE_VERSION-$COMMIT_HASH .

# Запустити контейнер
docker run -p 3000:80 svitlanakizilpinar/jenkins-node-js:latest

# Завантажити всі теги в Docker Hub
docker push svitlanakizilpinar/jenkins-node-js --all-tags
```

## Тестування

```bash
# Запустити тести
npm test
```

## Структура проекту

```
├── index.js          # Головний файл додатка
├── package.json       # Конфігурація npm
├── Dockerfile        # Конфігурація Docker
├── tests/
│   └── app.test.js   # Автоматизовані тести
└── .gitignore        # Git ignore правила
```

## CI/CD

Проект налаштований для інтеграції з Jenkins pipeline для автоматичного:
- Тестування коду
- Збірки Docker образу
- Деплою додатка

---

*Цей проект створений для навчання DevOps практик*