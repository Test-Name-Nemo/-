import logging
from telethon import TelegramClient, events
import openai

API_ID = 'данные в main.py'
API_HASH = 'данные в main.py'
PHONE_NUMBER = '####'
OPENAI_API_KEY = 'данные в main.py'

client = TelegramClient('user', API_ID, API_HASH)
openai.api_key = OPENAI_API_KEY

logging.basicConfig(level=logging.INFO)


@client.on(events.NewMessage)
async def handler(event):
    if event.is_private:
        sender = await event.get_sender()
        message_text = event.message.message
        logging.info(
            f"Новое сообщение от {sender.first_name} {sender.last_name}: {
                message_text
                }")

        try:
            response = openai.ChatCompletion.create(
                model="gpt-4.0",
                messages=[{"role": "user", "content": message_text}]
            )

            answer = response['choices'][0]['message']['content']

            if len(answer.strip()) > 0:
                await event.reply(answer)
                logging.info(f"Ответ отправлен: {answer}")
            else:
                logging.warning("Пустой ответ от OpenAI.")

        except Exception as e:
            logging.error(f"Ошибка при обращении к OpenAI: {e}")


async def main():
    await client.start()
    logging.info("Телеграм клиент запущен.")
    await client.run_until_disconnected()


with client:
    client.loop.run_until_complete(main())
