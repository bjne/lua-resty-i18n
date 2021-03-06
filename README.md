Name
====

lua-resty-i18n

Table of Contents
=================

* [Status](#status)
* [Synopsis](#synopsis)
* [Description](#description)
* [Installation](#installation)
* [Bugs and Patches](#bugs-and-patches)
* [Author](#author)
* [Copyright and License](#copyright-and-license)
* [See Also](#see-also)

Status
======

This library is already usable though still highly experimental.

The Lua API is still in flux and may change in the near future without notice.

[Back to TOC](#table-of-contents)

Synopsis
========

```lua
local i18n = require "resty.i18n"

local __ = i18n.new(po_path, language, allways_return_function)

```

[Back to TOC](#table-of-contents)

Description
===========

This library provides a simple and not by any means complete implementation of
.po file parsing and gettext translation.

[Back to TOC](#table-of-contents)

Installation
============

Copy the contents of the lib directory to a path in ngx-lua's search path

Load the module provided by this library in Lua. For example,

```lua
local i18n = require "resty.i18n"

local __ = i18n.new('/path/to/po-files', 'norwegian')

print(__("Hello World", "optional message context"))

```

[Back to TOC](#table-of-contents)

Bugs and Patches
================

Please report bugs or submit patches by

Creating a ticket on the [GitHub Issue Tracker](https://github.com/bjne/lua-resty-i18n/issues),

[Back to TOC](#table-of-contents)

Author
======

Bjørnar Ness <bjornar.ness@gmail.com>

[Back to TOC](#table-of-contents)

Copyright and License
=====================

This module is licensed under the BSD license.

Copyright (C) 2016-2017, by Bjørnar Ness

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

[Back to TOC](#table-of-contents)

See Also
========
* OpenResty: https://openresty.org/

[Back to TOC](#table-of-contents)
