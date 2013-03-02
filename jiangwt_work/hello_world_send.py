import pika


if __name__ == "__main__":
    credentials = pika.PlainCredentials(username="guest", password="guest")
    connection = pika.BlockingConnection(pika.ConnectionParameters(host='10.42.1.246', credentials=credentials))
    channel = connection.channel()
    channel.exchange_declare(exchange='nomoney.shutdown', type="fanout")

    message = "Hello"
    channel.basic_publish(exchange='nomoney.shutdown', routing_key='', body=message)
    print "Send message"
    connection.close()
