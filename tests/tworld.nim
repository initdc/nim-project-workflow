import unittest

import nim_demopkg/world
test "world":
  check world() == "World!"

test "helloWorld":
  check helloWorld() == "Hello, World!"