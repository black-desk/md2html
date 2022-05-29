# pandoc-include.lua

A lua filter for pandoc to include other files.

thanks to: <https://github.com/steindani/pandoc-include>

This is basically a lua version of it.

## Usage

With test.md:

```` md
```include
./file/to/include.cpp
./file/to/include.go
./file/to/include.cpp
./file/to/include.go
```
````

Run:

``` bash
pandoc -t html --lua-filter ./include.lua ./test/test.md
```

You will get something like

``` html
<pre data-classes="cpp"><code>#include &lt;iostream&gt;
using namespace std;
int main() { return 0; }
</code></pre>
<pre data-classes="go"><code>package main

func main(){
        println(&quot;hello world&quot;)
}
</code></pre>
<pre data-classes="cpp"><code>#include &lt;iostream&gt;
using namespace std;
int main() { return 0; }
</code></pre>
<pre data-classes="go"><code>package main

func main(){
        println(&quot;hello world&quot;)
}
</code></pre>
```

### NOTE

It seems to be no way inside pandoc filter to get the source file we are parsing
now, so I use the first file you send to pandoc to resole relative path.

Which means:

``` bash
pandoc -t html --lua-filter ./include.lua ./bug/test1.md ./bug/subdir/test2.md
```

will fail to find `subdir/file/to/include2.cpp` when parsing
`./bug/subdir/test2.md`
