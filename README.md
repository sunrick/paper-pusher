# paper-pusher

Fun little app I made with Sinatra, Pusher and Paperjs.

Demo: [`https://paperjs-pusher.herokuapp.com/`](https://paperjs-pusher.herokuapp.com/)

Link to demo is kind of pointless since I've password "protected" the demonstrator route. (Don't want my Pusher account abused). Feel free to contact me at `rickardsunden@gmail.com` or clone the repo if you want to see it in action!

# How to use

In command line:

`ruby server.rb`

Base url:

`localhost:4567`

A "demonstrator" can go to `/demonstrator` path to start moving the little wiggly line to anyone currently on `/`. Implementation is simple. Each time the demonstrator clicks on the screen, the event point is passed up to Pusher through the Sinatra server. That point gets sent to clients on `/` and Paperjs renders the new wiggly line using that point.

# Improvements

I would like to at some point make it so the wiggly line is exactly the same on everyone's screen regardless of screen size or when they joined the "stream". Would also like to scale the line size/stroke width to each screen.

# Just other stuff

I'm really excited to use this tech for other fun stuff. I'll probably make a version that plays different sound clips on peoples' computers.