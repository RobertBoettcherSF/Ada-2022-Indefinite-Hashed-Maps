pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Hash_Demo; use Hash_Demo;

procedure Tests is
   M : String_Maps.Map;
begin
   Put (M, "lang", "Ada");
   Put (M, "year", "2022");
   Assert (Length (M) = 2);
   Assert (Contains (M, "lang"));
   Assert (Get (M, "lang", "?") = "Ada");
   Assert (Get (M, "missing", "n/a") = "n/a");
   Put_Line ("PASS Include / Find / Contains");

   Put (M, "lang", "Ada 2022");
   Assert (Get (M, "lang", "?") = "Ada 2022");
   Assert (Length (M) = 2);
   Put_Line ("PASS replace existing key");

   Put (M, "short", "x");
   Put (M, "longer-key", "yyyy");
   Assert (Get (M, "short", "?") = "x");
   Assert (Get (M, "longer-key", "?") = "yyyy");
   Put_Line ("PASS indefinite String key/value lengths");

   Put_Line ("All Indefinite_Hashed_Maps topic tests passed.");
end Tests;
