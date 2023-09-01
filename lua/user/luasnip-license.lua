local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end
 -- 996 license
local s = luasnip.snippet
local i = luasnip.insert_node
local f = luasnip.function_node
local fmt = require("luasnip.extras.fmt").fmt

luasnip.add_snippets("all", {
  -- 996 中文版
  s({trig = "996l", dscr = "反996许可证"}, fmt([[
    版权所有（c）{} {}

    反996许可证版本1.0

    在符合下列条件的情况下，特此免费向任何得到本授权作品的副本（包括源
    代码、文件和/或相关内容，以下统称为“授权作品”）的个人和法人实体授权：
    被授权个人或法人实体有权以任何目的处置授权作品，包括但不限于使用、
    复制、修改，衍生利用、散布，发布和再许可：


    1.  个人或法人实体必须在许可作品的每个再散布或衍生副本上包含以上
        版权声明和本许可证，不得自行修改。
    2.  个人或法人实体必须严格遵守与个人实际所在地或个人出生地或归化地、
        或法人实体注册地或经营地（以较严格者为准）的司法管辖区所有适用
        的与劳动和就业相关法律、法规、规则和标准。如果该司法管辖区没有
        此类法律、法规、规章和标准或其法律、法规、规章和标准不可执行，
        则个人或法人实体必须遵守国际劳工标准的核心公约。
    3.  个人或法人不得以任何方式诱导或强迫其全职或兼职员工或其独立承包
        人以口头或书面形式同意直接或间接限制、削弱或放弃其所拥有的，受
        相关与劳动和就业有关的法律、法规、规则和标准保护的权利或补救措
        施，无论该等书面或口头协议是否被该司法管辖区的法律所承认，该等
        个人或法人实体也不得以任何方法限制其雇员或独立承包人向版权持有
        人或监督许可证合规情况的有关当局报告或投诉上述违反许可证的行为
        的权利。

    该授权作品是“按原样”提供，不做任何明示或暗示的保证，包括但不限于对
    适销性、特定用途适用性和非侵权性的保证。在任何情况下，无论是在合同
    诉讼、侵权诉讼或其他诉讼中，版权持有人均不承担因本软件或本软件的使
    用或其他交易而产生、引起或与之相关的任何索赔、损害或其他责任。
  ]], {
    f(function() return os.date("%Y") end, {}), -- year 
    i(1, "Author")
  })),
  
  -- 996 英文版
  s({trig = "996le", dscr = "Anti 996 License"}, fmt([[
    Copyright (c) {} {}

    Anti 996 License Version 1.0 (Draft)

    Permission is hereby granted to any individual or legal entity obtaining a copy
    of this licensed work (including the source code, documentation and/or related
    items, hereinafter collectively referred to as the "licensed work"), free of
    charge, to deal with the licensed work for any purpose, including without
    limitation, the rights to use, reproduce, modify, prepare derivative works of,
    publish, distribute and sublicense the licensed work, subject to the following
    conditions:

    1.  The individual or the legal entity must conspicuously display, without
        modification, this License on each redistributed or derivative copy of the
        Licensed Work.

    2.  The individual or the legal entity must strictly comply with all applicable
        laws, regulations, rules and standards of the jurisdiction relating to
        labor and employment where the individual is physically located or where
        the individual was born or naturalized; or where the legal entity is
        registered or is operating (whichever is stricter). In case that the
        jurisdiction has no such laws, regulations, rules and standards or its
        laws, regulations, rules and standards are unenforceable, the individual
        or the legal entity are required to comply with Core International Labor
        Standards.

    3.  The individual or the legal entity shall not induce or force its
        employee(s), whether full-time or part-time, or its independent
        contractor(s), in any methods, to agree in oral or written form,
        to directly or indirectly restrict, weaken or relinquish his or
        her rights or remedies under such laws, regulations, rules and
        standards relating to labor and employment as mentioned above,
        no matter whether such written or oral agreement are enforceable
        under the laws of the said jurisdiction, nor shall such individual
        or the legal entity limit, in any methods, the rights of its employee(s)
        or independent contractor(s) from reporting or complaining to the copyright
        holder or relevant authorities monitoring the compliance of the license
        about its violation(s) of the said license.

    THE LICENSED WORK IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE COPYRIGHT
    HOLDER BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
    OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN ANY WAY CONNECTION
    WITH THE LICENSED WORK OR THE USE OR OTHER DEALINGS IN THE LICENSED WORK.
  ]], {
    f(function() return os.date("%Y") end, {}), -- year 
    i(1, "Author")
  })),
})
