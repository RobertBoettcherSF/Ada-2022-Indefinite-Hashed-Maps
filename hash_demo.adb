pragma Ada_2022;

package body Hash_Demo is

   procedure Put
     (M : in out String_Maps.Map; Key, Value : String)
   is
   begin
      M.Include (Key, Value);
   end Put;

   function Get
     (M : String_Maps.Map; Key : String; Default : String) return String
   is
      C : constant String_Maps.Cursor := M.Find (Key);
   begin
      if String_Maps.Has_Element (C) then
         return String_Maps.Element (C);
      end if;
      return Default;
   end Get;

   function Contains (M : String_Maps.Map; Key : String) return Boolean is
   begin
      return M.Contains (Key);
   end Contains;

   function Length (M : String_Maps.Map) return Natural is
   begin
      return Natural (M.Length);
   end Length;

end Hash_Demo;
