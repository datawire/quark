package convert {

/* This file is deliberately basic for now with the expectation that it will be expanded to be more generic and more complex later. */

    class Unit {
        String type;
        String system;
        String subsystem=null;
        float baseValue;
        float value=0;
    }

    class Meter extends Unit {
        String type="length";
        String system="SI";
        String subsystem="mks";
        float baseValue=1;
    }

    class Foot extends Unit {
       String type="length";
       String system="English";
       float baseValue=3.2808399;
    }

    class Centimeter extends Unit {
        String type="length";
        String system="SI";
        String subsystem="cgs";
        float baseValue=100;
    }

    class Mile extends Unit {
        String type="length";
        String system="English";
        float baseValue=0.000621371;
    }

    class Parsec extends Unit {
        String type="length";
        String system="Astronomical";
        float baseValue=0.000000000000000032407557442396;
    }

    class League extends Unit {
        String type="length";
        String system="Nautical";
        float baseValue=0.00020712330174427;
    }

    class Conversion {
       float answer;
       float Convert ( Unit input, Unit output){
/*

Error handling not yet supported - this is a placeholder for when it is

          if input.type != output.type {
             return error;
          } 
          else {
             float answer =           float answer = input.value.__mul__((output.baseValue.__div__(input.baseValue)));
             return answer;
          }
*/
          float answer = input.value.__mul__((output.baseValue.__div__(input.baseValue)));
          return answer;
       }
    
    }
   
}

void main() {
    convert.Unit meters = new convert.Meter();
    convert.Unit feet = new convert.Foot();
    convert.Unit centimeters = new convert.Centimeter();
    convert.Unit miles = new convert.Mile();
    convert.Unit parsecs = new convert.Parsec();
    convert.Unit leagues = new convert.League();
    convert.Conversion conversion = new convert.Conversion();

    meters.value=20.0;
    feet.value= conversion.Convert(meters,feet);
    print(meters.value.toString() + " meters is " + feet.value.toString() + " feet.");

    miles.value= conversion.Convert(feet,miles);
    print(feet.value.toString() + " feet is " + miles.value.toString() + " miles.");

    centimeters.value= conversion.Convert(miles,centimeters);
    print(miles.value.toString() + " miles is " + centimeters.value.toString() + " centimeters.");

    parsecs.value= conversion.Convert(centimeters,parsecs);
    print(centimeters.value.toString() + " centimeters is " + parsecs.value.toString() + " parsecs.");

    leagues.value= conversion.Convert(parsecs,leagues);
    print(parsecs.value.toString() + " parsecs is " + leagues.value.toString() + " leagues.");

    meters.value= conversion.Convert(leagues,meters);
    print(leagues.value.toString() + " leagues is " + meters.value.toString() + " meters.");
}
