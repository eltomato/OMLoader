OMLoader
========

A simple library to load other scripts from other folders in ML.
Once cloned the project in a subfolder of your project you can use it like

```sml
  use "path/to/OMLoader/OMLoader.sml";
  open OMLoader;
```

After this first manual import where you have to specify the whole path you can
simply write

```sml
  into("modules/myModule", load("moduleName"));
```

which is the same as writing

```sml
  use "modules/myModule/moduleName.sml"
```

with the only difference that in `moduleName.sml` now you can import files from
the same folder as you'd normally use with `use`.

For a sample have a look to the [example.sml](https://github.com/eltomato/OMLoader/blob/master/example/example.sml).
