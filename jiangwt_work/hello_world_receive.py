import pika


credentials = pika.PlainCredentials(username="guest", password="guest")
connection = pika.BlockingConnection(pika.ConnectionParameters(host="10.42.1.246", credentials=credentials))
channel = connection.channel()

channel.exchange_declare(exchange="nomoney.shutdown", type="fanout")
result = channel.queue_declare(exclusive=True)
queue_name = result.method.queue
channel.queue_bind(exchange="nomoney.shutdown", queue=queue_name)

print ' [*] Waiting for messages. To exit press CTRL+C'


def callback(ch, method, properties, body):
    print " [x] Received %r" % (body,)

channel.basic_consume(callback, queue=queue_name, no_ack=True)
channel.start_consuming()
