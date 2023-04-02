/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.elements.file;

@safe:
import models.systems;

class DFileElement : DElement {
  // Constructors
  this() { initialize; }
}
auto FileElement() { return new DFileElement; }

///
unittest {
  auto element = new DFileElement;
/*   writeln("element.name = ", element.name);
  assert(element.name("test").name == "test");
  assert(element.name("testName").name == "testname"); */
}
