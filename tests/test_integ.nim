import unittest

import std/strformat
import nim_demopkg/hello
import nim_demopkg/world

test "hello + world":
  check fmt"{hello()}{world()}" == "Hello, World!"