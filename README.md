# README

## Purpose

The purpose of this is just to play around with Rack and see how the middleware can be manipulated for three reasons. One is to better comprehend Rack protocol. The second is to better understand how client/server communication occurs via HTTP. And the third is to understand the sorts of calls and responses I'll be dealing with (e.g. path, headers, and body).

## Method

1. Create a file for a basic Ruby class that invokes the call method and checks for an environment hash containing a path like 

```ruby
class HelloWorld
  def call(env)
    if env['PATH_INFO'] == '/hello'
      [200, {'Content-Type' => 'text/plain'}, ['Hello World!']]
    else
      [404, {'Content-Type' => 'text/plain'}, ['Not Found!']]
    end
  end
end
```

2. Require that newly created file in the config.ru file
* `require_relative 'hello_world.rb'`

3. Use rack syntax inside the config.ru file to run the newly created Ruby class
* `run HelloWorld.rb`

4. Go to the application directory in terminal
* `~/user/RackupTestApp`

5. Run ` $ rackup` which will open a server on port 9292

6. Open local browser, and visit `/hello` to see the successful plain-text response from step 1
* localhost:9292/hello

7. In the browser, try visiting any other pages to see that the error message is shown instead
* localhost:9292/foobar
