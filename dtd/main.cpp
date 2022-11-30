#include <stdio.h>
#include "stdlib.h"
#include "./rapidxml/rapidxml.hpp"
using namespace rapidxml;
xml_document<> doc;    // character type defaults to char
doc.parse<0>(text);    // 0 means default parse flags
int main()
{
cout << "Name of my first node is: " << doc.first_node()->name() << "\n";
xml_node<> *node = doc.first_node("foobar");
cout << "Node foobar has value " << node->value() << "\n";
for (xml_attribute<> *attr = node->first_attribute();
     attr; attr = attr->next_attribute())
{
    cout << "Node foobar has attribute " << attr->name() << " ";
    cout << "with value "  << attr->value() << "\n";
}
}