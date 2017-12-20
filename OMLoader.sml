
signature MLOADER = sig
  type loader
  val load : string -> loader
  val into : string * loader -> unit
end

structure OMLoader :> MLOADER = struct
  type loader = unit -> unit

  fun into (directory, loader) =
    let
      val currentDir = OS.FileSys.getDir()
    in
      (OS.FileSys.chDir(directory);
      loader();
      OS.FileSys.chDir(currentDir))
    end

  fun load (module) =
    fn() => (use(module^".sml"))

end
