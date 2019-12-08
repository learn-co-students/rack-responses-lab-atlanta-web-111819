class Application

    def call(env)
        resp = Rack::Response.new

        my_time = Kernel.rand(1...24)
        resp.write "Its #{my_time}\n"

        if my_time < 12
            resp.write "Good Morning"
        else
            resp.write "Good Afternoon"
        end
        resp.finish
    end
end # end of class