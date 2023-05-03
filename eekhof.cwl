# LucasEekhof/2023-01-03 for eekhof

#include:xcolor
#include:mathtools
#include:siunitx
#include:physics
#include:braket
#include:tikz-cd
#include:amssymb
#include:amsmath
#include:hyperref

#ifOption:use-xspace
#include:xspace
#endif

# \lq %|\rq#K # TODO
\lq
\rq
\d#m # Only in math environments - m
\const#m # Only in math environments - m
\f{functionname}{argument}#m # Only in math environments - m
\bracfrac{numerator}{denominator}#m # Only in math environments - m
\l#m # Only in math environments - m # Potentially use the - K for bracket-like
\r#m # Only in math environments - m # Potentially use the - K for bracket-like
\nablanovec#m # Only in math environments - m
\incfig{filename}{caption%text}#g # Include-graphic-like command -m # %text treats caption as text-like argument
\clight
\elementarycharge
\follows
\iff
\arrow

#\l( %| \r)#m # Only in math environments - m # Potentially use the - K for bracket-like # TODO
#\l{ %| \r}#m # Only in math environments - m # Potentially use the - K for bracket-like # TODO
#\l[ %| \r]#m # Only in math environments - m # Potentially use the - K for bracket-like # TODO