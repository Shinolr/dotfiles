#!/usr/bin/python

import fbchisellldbbase as fb

def lldbcommands():
  return [ PrintDataAsJSONString() ]

class PrintDataAsJSONString(fb.FBCommand):
    def name(self):
        return "pj"

    def description(self):
        return "Print JSON representation of Swift Data"

    def args(self):
        return [
            fb.FBCommandArgument(
                arg="data",
                type="Data",
                help="Data that will be evaluated when deserializing.",
            )
        ]

    def run(self, arguments, options):
        # Convert to NSObject first to allow for objc runtime to process it
        objectToPrint = fb.evaluateInputExpression(
            "{obj} as NSObject".format(obj=arguments[0])
        )

        jsonString = fb.evaluateExpressionValue(
            "(NSString*)[[NSString alloc] initWithData:(NSObject*){} encoding:4]".format(
               objectToPrint
            )
        ).GetObjectDescription()

        print(jsonString)

