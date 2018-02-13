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
  # f = open("D:\\Documents\\Actual_Documents\\school\\school\\reveng_independant_study\\abduction_keygenme\\newdump.asm", "wb")

  (used_functions, lib_funcs) = get_all_functions(addr)
  jump_addrs = get_jump_addrs(used_functions)

  print map(GetFunctionName, used_functions|lib_funcs)

  for func in used_functions:
    idc.Eval("gen_nasm(0x%x);" % func)
    # if (GetFunctionName(func) != ''):
      # f.write("\n" + GetFunctionName(func) + ":\n")
      # for item in FuncItems(func):
      #   if (item in jump_addrs):
          # f.write("\nloc_%X:\n" % item)
        # f.write(GetDisasm(item) + "\n")
  print("done.\n")
  # f.close()

# for function in get_all_functions(ScreenEA()):
#   idc.Eval("gen_nasm(0x%x);" % function)