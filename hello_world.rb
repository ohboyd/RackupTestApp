class HelloWorld
  def call(env)
    if env['PATH_INFO'] == '/hello'
      [200, {'Content-Type' => 'text/plain'}, ['Hello World!']]
    else
      [404, {'Content-Type' => 'text/plain'}, ['Not Found!']]
    end
  end
end
