import std/strformat
import hello

proc world*(): string = "World!"
proc helloWorld*(): string = fmt"{hello()}{world()}"
