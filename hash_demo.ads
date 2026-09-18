--  Ada 2022 topic: Ada.Containers.Indefinite_Hashed_Maps (String -> String).
pragma Ada_2022;

with Ada.Containers.Indefinite_Hashed_Maps;
with Ada.Strings.Hash;

package Hash_Demo is

   package String_Maps is new Ada.Containers.Indefinite_Hashed_Maps
     (Key_Type        => String,
      Element_Type    => String,
      Hash            => Ada.Strings.Hash,
      Equivalent_Keys => "=");

   procedure Put
     (M : in out String_Maps.Map; Key, Value : String);

   function Get
     (M : String_Maps.Map; Key : String; Default : String) return String;

   function Contains (M : String_Maps.Map; Key : String) return Boolean;

   function Length (M : String_Maps.Map) return Natural;

end Hash_Demo;
