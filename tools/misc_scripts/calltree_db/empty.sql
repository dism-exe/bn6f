CREATE TABLE Functions (
  addr INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE,
  opt_signature TEXT,
  is_pure INTEGER,
  filename TEXT
);
CREATE TABLE OTM_FunctionCallBranch (
  id INTEGER PRIMARY KEY,
  branch_id INTEGER,
  sequence INTEGER,
  addr INTEGER,
  thru_dispatch INTEGER,
  FOREIGN KEY(addr) REFERENCES Functions(addr)
);
CREATE TABLE OTM_FunctionCalls (
  id INTEGER PRIMARY KEY,
  level INTEGER,
  branch_id INTEGER,
  caller_addr INTEGER,
  callee_addr INTEGER,
  thru_dispatch INTEGER,
  FOREIGN KEY(branch_id) REFERENCES OTM_FunctionCallBranch(id),
  FOREIGN KEY(caller_addr) REFERENCES Functions(addr),
  FOREIGN KEY(callee_addr) REFERENCES Functions(addr)
);

