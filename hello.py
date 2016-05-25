def parse(text):
    return text.replace('&', '\n')


def app(environ, start_response):
    status = '200 OK'
    headers = [('Content-Type', 'text/plain')]
    body = parse(environ['QUERY_STRING'])
    start_response(status, headers)
    return [body]
