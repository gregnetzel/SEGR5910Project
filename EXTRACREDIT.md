Script to run
docker-compose up -d --build
website location
localhost:800

Reasoning:
I was already using docker-compose and adding nginx seemed relativly easy to do.
Finding a relativly simple nginx build was a bit difficult but eventually found one where
I understood all of the parts of the example.  Once that happened it was just a matter
of making my own conf file with the proper ports and names.  
For the previous assignment I had looked into using kubernetes but had decided it was too
much for this assignment.  I almost looked into it again but found more nginx things that fit
the project better.