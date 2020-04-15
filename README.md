# Boris Bikes

Nouns: person, bike, docking station
Verbs: use, release, working, see

Objects | Messages
------------- | -------------
Person | see, use
Bike | working
DockingStation | release

working? --- > Bike - false -> do nothing

                    - true -> release_ bike ---> DockingStation -> release a Bike
