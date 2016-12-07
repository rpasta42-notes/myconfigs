
import os

def file_exists(filePath):
   return (filePath is not None) and os.path.exists(filePath)

def read_file(filePath, nBytes=None, binary=False, createIfNeeded=False):
   """Read data from file. Expands home"""
   if file_exists(filePath):
      # FIXISSUE: where encoding error breaks updater flow
      errors = 'replace'
      flags = 'r'
      if binary:
         errors = None # FIXISSUE: remove encoding error replacement on binary data
         flags = 'rb'
      with open(filePath, flags) as f:
         if nBytes:
            return f.read(nBytes)
         else:
            return f.read()
   elif filePath and createIfNeeded:
      assert not nBytes
      file(filePath, 'w').close()
   return None

def write_file(filePath, data, binary=False):
   """Writes data to file. Expands home"""
   flags = 'w'
   if binary:
      flags = 'wb'
   with open(filePath, flags) as f:
      return f.write(data)


backup_num_fpath = 'backup/BACKUP_NUM' #'../backup/BACKUP_NUM'
backup_num = read_file(backup_num_fpath)

if backup_num is None:
   backup_num = 0
else:
   try:
      backup_num = int(backup_num)
   except:
      backup_num = 1000

print(backup_num)
write_file(backup_num_fpath, str(backup_num+1))

