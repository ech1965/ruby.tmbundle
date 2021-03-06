
rcodetools.el allows you to run rcodetools on a buffer.

To eval the sexp, type C-e C-x C-e; `end-of-line' and `eval-last-sexp'.

installation
============

If you use RI document feature, you must install ri-emacs first.
  http://rubyforge.org/projects/ri-emacs/

If you feel RI and ri-emacs.rb startup is SLOW, you want to install FastRI.
FastRI offers ri-emacs compatible layer, so you can use it with ri-ruby.el.
  http://eigenclass.org/hiki.rb?fastri

Copy <tt>rcodetools.el</tt> to the appropriate directory, which is in load-path.
Then require it.
  (require 'rcodetools)

If you use icicles copy <tt>icicles-rcodetools.el</tt> too.
Then require it.
  (require 'icicles-rcodetools)
It provides wonderful `help on candidate' feature, RI document on each candidate during completion.

If you use anything.el copy <tt>anything-rcodetools.el</tt> too.
Then require it.
  (require 'anything-rcodetools)
RI document on each candidate during completion.

anything-show-completion.el shows selection (mehod) in buffer for completion.
It is available in:
  http://www.emacswiki.org/cgi-bin/wiki/download/anything-show-completion.el

I think anything-rcodetools is more convenient than icicles-rcodetools.
I'm addicted to anything!
  http://www.emacswiki.org/cgi-bin/wiki/Anything

xmpfilter on buffer
===================

# [EVAL IT] (describe-function 'xmp)

If you want to add => marks, call comment-dwim twice.

# [EVAL IT] (describe-function 'comment-dwim)

method/class/constant completion
================================

# [EVAL IT] (describe-function 'rct-complete-symbol)

If you use icicles-rcodetools or anything-rcodetools, you can browse RI document
for selected candidate by typing C-M-RET (icicles) or C-z (anything.
It is wonderful icicles and anything feature!!

show RI document / jump to the definition
=========================================

# [EVAL IT] (describe-function 'rct-ri)

By default rct-ri asks for a TAGS file, which is generated by tag generator like rtags.
If there is a TAGS file, this command jumps to the definition of current method.
If use do not use this feature, evaluate:
  (setq rct-find-tag-if-available nil)

# [EVAL IT] (describe-variable 'rct-find-tag-if-available)

speed-up xmpfilter and completion
=================================

# [EVAL IT] (describe-function 'rct-fork)
# [EVAL IT] (describe-function 'rct-fork-kill)

M-x rct-fork pre-loads heavy libraries (like rails).
You need not every time wait for loading them anymore!
