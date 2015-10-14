package convert2 {

    class Unit {
        String type;
        String label;
        String system;
        String subsystem=null;
        float value=0;
        float conversionFactor=0;

        Unit(String unitType, String unitLabel, float unitValue) {
            type=unitType;
            label=unitLabel;
            value=unitValue;
        }
    }

    class ConversionFactors {
         Map<String,float> initializeConversion() {
             Map<String,float> lengthFactors = new Map<String,float>();  
             lengthFactors.__set__("meter",1);
             lengthFactors.__set__("centimeter",100);
             lengthFactors.__set__("foot",3.2808399); 
             lengthFactors.__set__("mile",0.000621371);
             lengthFactors.__set__("parsec",0.000000000000000032407557442396);
             lengthFactors.__set__("league",0.00020712330174427);
             return lengthFactors;
         }
    }

    class Conversion {
       float answer;
       ConversionFactors conversionFactors = new ConversionFactors();
       Map<String,float> relativeLengths = conversionFactors.initializeConversion();
       float Convert ( Unit input, Unit output){
/*
           && is not yet implemented. Commenting out for now and changing to nested if statements.
            
           if (input.type=="length" && output.type=="length") {

*/
           if (input.type=="length") {
               if (output.type=="length") {
                   input.conversionFactor=relativeLengths.__get__(input.label);
                   output.conversionFactor=relativeLengths.__get__(output.label);
                   float answer = input.value.__mul__((output.conversionFactor.__div__(input.conversionFactor)));
                   return answer;          
               }
               else {
                   return -123456789;
               }
           } 
           else {
               return -987654321;
           }    
       } 
    }
}

void main() {
    convert2.Unit length1 = new convert2.Unit("length","meter",20.0);
    convert2.Unit length2 = new convert2.Unit("length","foot",0);
    convert2.Conversion conversion = new convert2.Conversion();

    length2.value= conversion.Convert(length1,length2);
    print(length1.value.toString() + " " + length1.label + "s is " + length2.value.toString() + " feet.");
    
    length1.label="mile";
    length1.value= conversion.Convert(length2, length1);
    print(length2.value.toString() + " feet is " + length1.value.toString() + " " + length1.label + "s.");

    length2.label="centimeter";
    length2.value= conversion.Convert(length1,length2);
    print(length1.value.toString() + " " + length1.label + "s is " + length2.value.toString() + " " + length2.label + "s.");

    length1.label="parsec";
    length1.value= conversion.Convert(length2, length1);
    print(length2.value.toString() + " " + length2.label + "s is " + length1.value.toString() + " " + length1.label + "s.");

    length2.label="league";
    length2.value= conversion.Convert(length1,length2);
    print(length1.value.toString() + " " + length1.label + "s is " + length2.value.toString() + " " + length2.label + "s.");

    length1.label="meter";
    length1.value= conversion.Convert(length2, length1);
    print(length2.value.toString() + " " + length2.label + "s is " + length1.value.toString() + " " + length1.label + "s.");

    print("");
    print("Showing error cases where the unit types don't match:");
    print("");

    length2.type="volume";
    length1.value= conversion.Convert(length2, length1);
    print(length2.value.toString() + " " + length2.label + "s is " + length1.value.toString() + " " + length1.label + "s.");

    length1.value=20.0;
    length2.value= conversion.Convert(length1,length2);
    print(length1.value.toString() + " " + length1.label + "s is " + length2.value.toString() + " " + length2.label + "s.");

       
}