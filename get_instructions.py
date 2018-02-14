from idautils import *
from idaapi import *
from idc import *

def get_all_functions(addr, visited=set([]), lib_funcs=set([])):
  if len(visited) == 0:
    visited = set([addr])

  for (startea, endea) in Chunks(addr):
    for head in Heads(startea, endea):

      if (GetMnem(head) == "call"):
        addr = GetOperandValue(head, 0)
        if addr not in visited:
          if GetFunctionName(addr)[0] != '_':
            visited |= set([addr])
            (new_visit, new_funcs) = get_all_functions(addr, visited, lib_funcs)
            visited |= new_visit
            lib_funcs |= new_funcs
          else:
            lib_funcs |= set([addr])

  return (visited, lib_funcs)

def get_jump_addrs(function_list):
  instructions = set([])

  for addr in function_list:
    for (startea, endea) in Chunks(addr):
      for head in Heads(startea, endea):
        if (len(GetMnem(head)) > 0 and GetMnem(head)[0] == 'j'):
          instructions |= set([GetOperandValue(head, 0)])
  return instructions

def get_func_dump(addr=ScreenEA()):
  (used_functions, lib_funcs) = get_all_functions(addr)
  jump_addrs = get_jump_addrs(used_functions)

  print map(GetFunctionName, used_functions)
  
  print("---Begin Disassembly---")

  print("section .text")


  for lib_func in map(GetFunctionName, lib_funcs):
    print("extern %s" % lib_func)

  for func in used_functions:
    idc.Eval("gen_nasm(0x%x);" % func)

  print("\nsection .data")
  print("\n---End Disassembly---")
